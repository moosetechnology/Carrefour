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

{ #category : #api }
CRFBinderVisitor >> bindFastModel: fastModel fromFamixMethodEntity: aFamixMethodEntity [
	self sourceFamixEntity: aFamixMethodEntity.
	fastModel allFASTJavaMethodEntity do: [ :methodEntity | self clone accept: methodEntity ]
]

{ #category : #visitor }
CRFBinderVisitor >> determineAttributeWithName: aVariableName [
	"I do a lookup for a variable in the famix code with the name = aVariableName 
	 I return the variable if found nil else
	
	It should have only one variable possible for one identifier (if the lookup is done correctly)"

	^ ((self sourceFamixEntity localVariables select: [ :localVariable | localVariable name = aVariableName ])
		ifEmpty: [ (self sourceFamixEntity parameters select: [ :parameter | parameter name = aVariableName ])
				ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aVariableName ])
						ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aVariableName ])
								ifEmpty: [ (self sourceFamixEntity atScope: FAMIXClass) first attributes
										select: [ :implicitVariable | implicitVariable name = aVariableName ] ] ] ] ])
		ifNotEmpty: [ :possibleStructuralEntities | possibleStructuralEntities first ]
		ifEmpty: [ nil ]
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntity [
	^ sourceFamixEntity
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntity: anObject [
	sourceFamixEntity := anObject
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTEntity: aFASTEntity [
	^ aFASTEntity childrenNode do: [ :child | self clone accept: child ]
]

{ #category : #visitor }
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

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaClassProperty: aFASTJavaVariableDeclarator [
	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator.
	(self sourceFamixEntity mooseModel allTypes select: [ :type | type name = aFASTJavaVariableDeclarator type name ])
		ifNotEmpty: [ :class | 
			class first fastAccesses add: aFASTJavaVariableDeclarator type.
			class first attributes
				select: [ :attribute | attribute name = aFASTJavaVariableDeclarator fieldName ]
				thenDo: [ :attribute | attribute fastAccesses add: aFASTJavaVariableDeclarator ] ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaIdentifier: aFASTJavaIdentifier [
	(self determineAttributeWithName: aFASTJavaIdentifier name) ifNotNil: [ :structuralEntity | structuralEntity fastAccesses add: aFASTJavaIdentifier ]
	
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	(self sourceFamixEntity allToScope: FAMIXMethod)
		select: [ :method | method name = aFASTJavaMethodEntity name ]
		thenDo: [ :methodWithCorrectName | methodWithCorrectName fast: aFASTJavaMethodEntity ].
	aFASTJavaMethodEntity statements do: [ :statement | self clone accept: statement ].
	aFASTJavaMethodEntity parameters
		do: [ :parameter | 
			self sourceFamixEntity parameters
				select: [ :famixParameter | famixParameter name = parameter name ]
				thenDo: [ :famixParameter | famixParameter fastAccesses add: parameter ] ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation [
	super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation.
	self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			(aFASTJavaMethodInvocation name beginsWith: invoc to first name)
				and: [ (aFASTJavaMethodInvocation atScope: FASTJavaMethodEntity) first famix = invoc from ] ]
		thenDo: [ :invoc | invoc fast: aFASTJavaMethodInvocation ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewClassExpression: aFASTJavaNewClassExpression [
	self sourceFamixEntity mooseModel allClasses asOrderedCollection
		select: [ :class | '*' , aFASTJavaNewClassExpression name , '*' match: class name ]
		thenDo: [ :newClassExpression | aFASTJavaNewClassExpression famixType: newClassExpression  ].
	aFASTJavaNewClassExpression childrenNode do: [ :child | self clone accept: child ]
]

{ #category : #visitor }
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

{ #category : #visitor }
CRFBinderVisitor >> visitFASTReturnStatement: aFASTReturnStatement [
	self clone accept: aFASTReturnStatement expression
]
