Class {
	#name : #CRFBinderVisitor,
	#superclass : #FASTVisitor,
	#instVars : [
		'sourceFamixEntity'
	],
	#category : #'Carrefour-FastAndBindingGenerator'
}

{ #category : #api }
CRFBinderVisitor class >> bindFastModel: fastModel fromFamixMethodEntity: aFamixEntity [
	^ self new bindFastModel: fastModel fromFamixMethodEntity: aFamixEntity
]

{ #category : #'as yet unclassified' }
CRFBinderVisitor >> bindFastModel: fastModel fromFamixMethodEntity: aFamixMethodEntity [
	self sourceFamixEntity: aFamixMethodEntity.
	fastModel allFASTJavaMethodEntity do: [ :methodEntity | self clone accept: methodEntity ]
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntity [
	^ sourceFamixEntity
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntity: anObject [
	sourceFamixEntity := anObject
]

{ #category : #generated }
CRFBinderVisitor >> visitFASTEntity: aFASTEntity [
	^ aFASTEntity childrenNode do: [ :child | self clone accept: child ]
]

{ #category : #'as yet unclassified' }
CRFBinderVisitor >> visitFASTJavaAssignementExpression: aFASTJavaAssignementExpression [
	super visitFASTJavaAssignementExpression: aFASTJavaAssignementExpression.
	((self sourceFamixEntity localVariables select: [ :localVariable | localVariable name = aFASTJavaAssignementExpression variable name ])
		ifEmpty: [ (self sourceFamixEntity parameters select: [ :parameter | parameter name = aFASTJavaAssignementExpression variable name ])
				ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aFASTJavaAssignementExpression variable name ])
						ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aFASTJavaAssignementExpression variable name ])
								ifEmpty: [ (self sourceFamixEntity atScope: FAMIXClass) first attributes select: [ :implicitVariable | implicitVariable name = aFASTJavaAssignementExpression variable name ] ] ] ] ])
		do: [ :structuralEntity | 
			structuralEntity fastAssignement add: aFASTJavaAssignementExpression. ]
]

{ #category : #'as yet unclassified' }
CRFBinderVisitor >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	super visitFASTJavaMethodEntity: aFASTJavaMethodEntity.
	self sourceFamixEntity fast: aFASTJavaMethodEntity.
]

{ #category : #'as yet unclassified' }
CRFBinderVisitor >> visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation [
	super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation.
	self sourceFamixEntity outgoingInvocations
		select: [ :invoc | aFASTJavaMethodInvocation name beginsWith: invoc to first name ]
		thenDo: [ :invoc | invoc fast: aFASTJavaMethodInvocation ].
]

{ #category : #'as yet unclassified' }
CRFBinderVisitor >> visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator [
	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator.
	((self sourceFamixEntity localVariables select: [ :localVariable | localVariable name = aFASTJavaVariableDeclarator variable name ])
		ifEmpty: [ (self sourceFamixEntity parameters select: [ :parameter | parameter name = aFASTJavaVariableDeclarator variable name ])
				ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aFASTJavaVariableDeclarator variable name ])
						ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aFASTJavaVariableDeclarator variable name ])
								ifEmpty: [ (self sourceFamixEntity atScope: FAMIXClass) first attributes select: [ :implicitVariable | implicitVariable name = aFASTJavaVariableDeclarator variable name ] ] ] ] ])
		do: [ :structuralEntity | 
			structuralEntity fastDeclaration add: aFASTJavaVariableDeclarator.].
]
