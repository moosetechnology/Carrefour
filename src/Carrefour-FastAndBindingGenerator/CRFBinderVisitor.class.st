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
	fastModel allFASTJavaMethodEntity do: [ :methodEntity | self clone accept: methodEntity ].
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
	^ aFASTEntity childrenNode do: [ :child | self accept: child ]
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
	| classes |
	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator.
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
			[ :attribute | attribute fastAccesses add: aFASTJavaVariableDeclarator ] ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaFieldAccess: aFASTJavaFieldAccess [
	super visitFASTJavaAssignementExpression: aFASTJavaFieldAccess.
	(self determineAttributeWithName: aFASTJavaFieldAccess fieldName)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastAccesses add: aFASTJavaFieldAccess ]
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
	super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation.
	self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			(invoc hasSourceAnchor
				ifTrue: [  invoc sourceAnchor startPos
						- (invoc from allAtScope: FAMIXMethod) first sourceAnchor startPos
						>= (aFASTJavaMethodInvocation startPos - 1)
						and: [ invoc sourceAnchor endPos
								- (invoc from allAtScope: FAMIXMethod) first sourceAnchor startPos
								<= (aFASTJavaMethodInvocation endPos + 1) ] ]
				ifFalse: [ invoc to first name beginsWith: aFASTJavaMethodInvocation name ])
				and: [ (aFASTJavaMethodInvocation atScope: FASTJavaMethodEntity) first
						famix = invoc from ] ]
		thenDo: [ :invoc | invoc fast: aFASTJavaMethodInvocation ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewClassExpression: aFASTJavaNewClassExpression [
	self sourceFamixEntity mooseModel allClasses asOrderedCollection
		select: [ :class | '*' , aFASTJavaNewClassExpression type name , '*' match: class name ]
		thenDo: [ :newClassExpression | aFASTJavaNewClassExpression famixType: newClassExpression  ].
	aFASTJavaNewClassExpression childrenNode do: [ :child | self accept: child ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewExpression: aFASTJavaNewExpression [
	"We base the selection on sourceAnchor because it is the the most precise thing we have
	However, we accept a one character error because it can happens with the source anchor of verveineJ"
	self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			invoc hasSourceAnchor and: [((invoc sourceAnchor startPos - invoc from sourceAnchor startPos) >= (aFASTJavaNewExpression startPos - 1)) and: [ ((invoc sourceAnchor endPos - invoc from sourceAnchor startPos) <= (aFASTJavaNewExpression endPos +1))
				and: [ (aFASTJavaNewExpression atScope: FASTJavaMethodEntity) first famix = invoc from ] ] ] ]
		thenDo: [ :invoc | invoc fast: aFASTJavaNewExpression ]
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
	super visitFASTReturnStatement: aFASTReturnStatement.
	aFASTReturnStatement expression
		ifNotNil: [ self accept: aFASTReturnStatement expression ]
]
