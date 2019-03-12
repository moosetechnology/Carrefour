Class {
	#name : #CRFBinderVisitor,
	#superclass : #FASTJavaVisitor,
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
	fastModel allFASTJavaMethodEntity select: [:methodEntity | methodEntity parentNode isNil] thenDo: [ :methodEntity | self clone accept: methodEntity ].
	(fastModel allWithType: FASTJavaInitializer) do: [ :methodEntity | self clone accept: methodEntity ]
]

{ #category : #visitor }
CRFBinderVisitor >> determineAttributeWithName: aVariableName [
	"I do a lookup for a variable in the famix code with the name = aVariableName 
	 I return the variable if found nil else
	
	It should have only one variable possible for one identifier (if the lookup is done correctly)"

	^ ((self sourceFamixEntity localVariables select: [ :localVariable | localVariable name = aVariableName ])
		ifEmpty: [ (self sourceFamixEntity parameters select: [ :parameter | parameter name = aVariableName ])
				ifEmpty: [ (self sourceFamixEntity implicitVariables select: [ :implicitVariable | implicitVariable name = aVariableName ])
						ifEmpty: [ (self sourceFamixEntity atScope: FAMIXClass) first attributes select: [ :implicitVariable | implicitVariable name = aVariableName ] ] ] ])
		ifNotEmpty: [ :possibleStructuralEntities | possibleStructuralEntities first ]
		ifEmpty: [ nil ]
]

{ #category : #visitor }
CRFBinderVisitor >> determineAttributeWithName: aVariableName from: aFASTEntity [
	"I do a lookup for a variable in the famix code with the name = aVariableName 
	 I return the variable if found nil else
	
	It should have only one variable possible for one identifier (if the lookup is done correctly)"
	((aFASTEntity allAtScope: FASTJavaMethodEntity) collect: #famix) reverse do: [ :aFamixMethod | 
	 ((aFamixMethod localVariables select: [ :localVariable | localVariable name = aVariableName ])
		ifEmpty: [ (aFamixMethod parameters select: [ :parameter | parameter name = aVariableName ])
				ifEmpty: [ (aFamixMethod implicitVariables select: [ :implicitVariable | implicitVariable name = aVariableName ])
						ifEmpty: [ (aFamixMethod atScope: FAMIXClass) first attributes select: [ :implicitVariable | implicitVariable name = aVariableName ] ] ] ])
		ifNotEmpty: [ :possibleStructuralEntities | ^ possibleStructuralEntities first ] ].
	^ nil
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
	^ aFASTEntity childrenNode do: [ :child | self accept: child ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaAssignementExpression: aFASTJavaAssignementExpression [
	(self determineAttributeWithName: aFASTJavaAssignementExpression variable name from: aFASTJavaAssignementExpression)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastAssignement add: aFASTJavaAssignementExpression ].
	
	super visitFASTJavaAssignementExpression: aFASTJavaAssignementExpression.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaClassProperty: aFASTJavaVariableDeclarator [
	| classes |
	classes := aFASTJavaVariableDeclarator type name = 'this'
		ifFalse: [ self sourceFamixEntity mooseModel allTypes
				select: [ :type | type name = aFASTJavaVariableDeclarator type name ] ]
		ifTrue: [ self sourceFamixEntity atScope: FAMIXClass ].
	classes ifNotEmpty: [ :class |  
	class anyOne fastAccesses add: aFASTJavaVariableDeclarator type.
	class anyOne attributes
		select:
			[ :attribute | attribute name = aFASTJavaVariableDeclarator fieldName ]
		thenDo:
			[ :attribute | attribute fastAccesses add: aFASTJavaVariableDeclarator ] ].
	
	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaFieldAccess: aFASTJavaFieldAccess [
	(self determineAttributeWithName: aFASTJavaFieldAccess fieldName)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastAccesses add: aFASTJavaFieldAccess ].
		
	super visitFASTJavaAssignementExpression: aFASTJavaFieldAccess.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaIdentifier: aFASTJavaIdentifier [
	(self determineAttributeWithName: aFASTJavaIdentifier name) ifNotNil: [ :structuralEntity | structuralEntity fastAccesses add: aFASTJavaIdentifier ]
	
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaInitializer: aFASTJavaInitializer [
	(self sourceFamixEntity allToScope: FAMIXMethod)
		select: [ :method | method name = '<Initializer>' ]
		thenDo: [ :methodWithCorrectName | methodWithCorrectName fast: aFASTJavaInitializer ].
	aFASTJavaInitializer statementBlock ifNotNil: [ :statementBlock | self accept: statementBlock ].
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	(self sourceFamixEntity allToScope: FAMIXMethod)
		select: [ :method | method name = aFASTJavaMethodEntity name ]
		thenDo: [ :methodWithCorrectName | methodWithCorrectName fast: aFASTJavaMethodEntity ].
	aFASTJavaMethodEntity statements do: [ :statement | self accept: statement ].
	aFASTJavaMethodEntity parameters
		do: [ :parameter | 
			self sourceFamixEntity parameters
				select: [ :famixParameter | famixParameter name = parameter name ]
				thenDo: [ :famixParameter | famixParameter fastAccesses add: parameter ] ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation [
	(self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			(invoc hasSourceAnchor
				ifTrue: [ invoc sourceAnchor startPos
						- ((invoc from allAtScope: FAMIXMethod) asOrderedCollection sort: [ :method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first sourceAnchor startPos
						>= (aFASTJavaMethodInvocation startPos - 1)
						and: [ invoc sourceAnchor endPos
								- ((invoc from allAtScope: FAMIXMethod) asOrderedCollection sort: [ :method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first sourceAnchor startPos
								<= (aFASTJavaMethodInvocation endPos + 1) ] ]
				ifFalse: [ invoc to first name beginsWith: aFASTJavaMethodInvocation name ])
				and: [ (aFASTJavaMethodInvocation
						atAnyScope:
							{FASTJavaInitializer.
							FASTJavaMethodEntity}) first famix = invoc from ] ])
		asOrderedCollection
		ifNotEmpty: [ :collectionOfPotentialInvoc | 
			(collectionOfPotentialInvoc
				sort:
					[ :invoc1 :invoc2 | invoc1 sourceAnchor startPos < invoc2 sourceAnchor startPos ])
				first fast: aFASTJavaMethodInvocation ].
			
	super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewClassExpression: aFASTJavaNewClassExpression [
	self sourceFamixEntity mooseModel allClasses asOrderedCollection
		select: [ :class | ('*' , aFASTJavaNewClassExpression type name , '*' match: class name) and: [ class hasSourceAnchor ] ]
		thenDo: [ :newClassExpression | aFASTJavaNewClassExpression famixType: newClassExpression  ].
	aFASTJavaNewClassExpression childrenNode do: [ :child | self accept: child ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewExpression: aFASTJavaNewExpression [
	"We base the selection on sourceAnchor because it is the the most precise thing we have
	However, we accept a one character error because it can happens with the source anchor of verveineJ"

	(self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			invoc hasSourceAnchor
				and: [ invoc sourceAnchor startPos - invoc from sourceAnchor startPos
						>= (aFASTJavaNewExpression startPos - 1)
						and: [ invoc sourceAnchor endPos - invoc from sourceAnchor startPos
								<= (aFASTJavaNewExpression endPos + 1)
								and: [ (aFASTJavaNewExpression
										atAnyScope:
											{FASTJavaMethodEntity.
											FASTJavaInitializer}) first famix = invoc from ] ] ] ])
		asOrderedCollection
		ifNotEmpty: [ :collectionOfPotentialInvoc | 
			(collectionOfPotentialInvoc
				sort:
					[ :invoc1 :invoc2 | invoc1 sourceAnchor startPos < invoc2 sourceAnchor startPos ])
				first fast: aFASTJavaNewExpression ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator [
	(self determineAttributeWithName: aFASTJavaVariableDeclarator variable name from: aFASTJavaVariableDeclarator)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastDeclaration add: aFASTJavaVariableDeclarator ].		
	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTNamedEntity: aFASTNamedEntity [ 
	(self determineAttributeWithName: aFASTNamedEntity name from: aFASTNamedEntity)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastAccesses add: aFASTNamedEntity ].
		
	super visitFASTNamedEntity: aFASTNamedEntity.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTReturnStatement: aFASTReturnStatement [
	aFASTReturnStatement expression
		ifNotNil: [ self accept: aFASTReturnStatement expression ].
		
	super visitFASTReturnStatement: aFASTReturnStatement.
]
