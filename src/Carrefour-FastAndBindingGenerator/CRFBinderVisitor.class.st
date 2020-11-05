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
CRFBinderVisitor >> bindFastModel: fastModel fromEntity: aFamixMethodEntity [
	aFamixMethodEntity bindFastModel: fastModel usingBinder: self
]

{ #category : #api }
CRFBinderVisitor >> bindFastModel: fastModel fromFamixClassEntity: aFamixClassEntity [
	self
		execute: [ self sourceFamixEntity: aFamixClassEntity.
			(fastModel allWithType: FASTJavaClassDeclaration)
				select: [ :classDeclaration | classDeclaration parentNode isNil ]
				thenDo: [ :classDeclaration | self accept: classDeclaration ].
			fastModel metamodel: CRFModel metamodel ]
		recordedAs: 'Bind ' , aFamixClassEntity mooseName printString
]

{ #category : #api }
CRFBinderVisitor >> bindFastModel: fastModel fromFamixMethodEntity: aFamixMethodEntity [
	self
		execute: [ self sourceFamixEntity: aFamixMethodEntity.
			fastModel allFASTJavaMethodEntity
				select: [ :methodEntity | methodEntity parentNode isNil ]
				thenDo: [ :methodEntity | self accept: methodEntity ].
			(fastModel allWithType: FASTJavaInitializer) do: [ :methodEntity | self accept: methodEntity ].
			fastModel metamodel: CRFModel metamodel ]
		recordedAs: 'Bind ' , aFamixMethodEntity mooseName printString
]

{ #category : #'private - action' }
CRFBinderVisitor >> determineAttributeWithName: aVariableName from: aFASTEntity [
	"I do a lookup for a variable in the famix code with the name = aVariableName 
	 I return the variable if found nil else
	
	It should have only one variable possible for one identifier (if the lookup is done correctly)"

	aVariableName ifNil: [ ^ nil ].
	(aFASTEntity
		atAnyScope:
			{FASTJavaInitializer.
			FASTJavaMethodEntity})
		ifNotEmpty: [ :collectionOfMethods | 
			(collectionOfMethods anyOne famix allAtScope: FamixTMethod)
				do: [ :aFamixMethod | 
					(self
						determineAttributeWithName: aVariableName
						ofFamixMethod: aFamixMethod
						for: aFASTEntity) ifNotNil: [ :found | ^ found ] ] ]
		ifEmpty:
			[ "We are in a FASTJavaClassDeclaration (sourceFamixEntity) and in a direct creation
			ifNone it is probably the name of a type... so we do not care
			"
			self sourceFamixEntity attributes
				detect: [ :attribute | attribute name = aVariableName ]
				ifFound: [ :attribute | ^ attribute ] ].
	^ nil
]

{ #category : #'private - action' }
CRFBinderVisitor >> determineAttributeWithName: aVariableName ofFamixMethod: aFamixMethod for: aFastEntity [
	aFamixMethod localVariables
		detect: [ :localVariable | localVariable name = aVariableName ]
		ifFound: [ :found | ^ found ].
	aFamixMethod parameters
		detect: [ :parameter | parameter name = aVariableName ]
		ifFound: [ :found | ^ found ].
	aFamixMethod implicitVariables
		detect: [ :implicitVariable | implicitVariable name = aVariableName ]
		ifFound: [ :found | ^ found ].
	(aFastEntity allAtScope: FASTJavaNewClassExpression)
		flatCollect: [ :aFastJavaNewClassExpression | 
			aFastJavaNewClassExpression famixType attributes
				detect: [ :attribute | attribute name = aVariableName ]
				ifFound: [ :found | ^ found ] ].
	((aFamixMethod
		atAnyScope:
			{FamixTParameterizedType.
			FamixTClass}) flatCollect: #withSuperclassHierarchy)
		ifNotEmpty: [ :scopes | 
			scopes
				do: [ :scope | 
					scope attributes
						detect: [ :implicitVariable | implicitVariable name = aVariableName ]
						ifFound: [ :found | ^ found ] ] ].
	^ nil
]

{ #category : #private }
CRFBinderVisitor >> distanceOf: element1 with: baseElement [
	| fromSourceAnchor |
	fromSourceAnchor := self sourceFamixEntity sourceAnchor.
	^ (baseElement startPos + fromSourceAnchor startPos - element1 startPos) abs + (baseElement endPos + fromSourceAnchor startPos - element1 endPos) abs
]

{ #category : #private }
CRFBinderVisitor >> sortCollection: methodsWithCorrectName byDistanceWith: aFASTJavaMethodEntity [
	^ methodsWithCorrectName sorted: [ :element1 :element2 | (self distanceOf: element1 sourceAnchor with: aFASTJavaMethodEntity) < (self distanceOf: element2 sourceAnchor with: aFASTJavaMethodEntity) ]
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntity [
	^ sourceFamixEntity
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntity: anObject [
	sourceFamixEntity := anObject
]

{ #category : #accessing }
CRFBinderVisitor >> sourceFamixEntityStartPo [
	^ self sourceFamixEntity sourceAnchor startPos
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTEntity: aFASTEntity [
	^ aFASTEntity children do: [ :child | self accept: child ]
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
		ifFalse: [ self sourceFamixEntity mooseModel allTypes select: [ :type | type name = aFASTJavaVariableDeclarator type name ] ]
		ifTrue: [ self sourceFamixEntity atScope: FAMIXClass ].
	classes
		ifNotEmpty: [ :class | 
			class anyOne fastAccesses add: aFASTJavaVariableDeclarator type.
			class anyOne attributes
				select: [ :attribute | attribute name = aFASTJavaVariableDeclarator fieldName ]
				thenDo: [ :attribute | attribute fastAccesses add: aFASTJavaVariableDeclarator ] ].

	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaFieldAccess: aFASTJavaFieldAccess [
	(self determineAttributeWithName: aFASTJavaFieldAccess fieldName from: aFASTJavaFieldAccess)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastAccesses add: aFASTJavaFieldAccess ].
		
	super visitFASTJavaAssignementExpression: aFASTJavaFieldAccess.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaIdentifier: aFASTJavaIdentifier [
	(self determineAttributeWithName: aFASTJavaIdentifier name from: aFASTJavaIdentifier) ifNotNil: [ :structuralEntity | structuralEntity fastAccesses add: aFASTJavaIdentifier ].
	super visitFASTJavaIdentifier: aFASTJavaIdentifier.
	
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaInitializer: aFASTJavaInitializer [
	(self sourceFamixEntity allToScope: FAMIXMethod)
		select: [ :method | 
			method name = '<Initializer>' and: [ method hasSourceAnchor
				and: [ | sourceStartPos |
					sourceStartPos := self sourceFamixEntityStartPo.
					method sourceAnchor startPos - sourceStartPos <= (aFASTJavaInitializer startPos + 1)
						and: [ method sourceAnchor endPos - sourceStartPos >= (aFASTJavaInitializer endPos - 1) ] ] ] ]
		thenDo: [ :methodWithCorrectName | methodWithCorrectName fast: aFASTJavaInitializer ].
	aFASTJavaInitializer statementBlock ifNotNil: [ :statementBlock | self accept: statementBlock ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	(aFASTJavaMethodEntity parentNode isNil and: [ aFASTJavaMethodEntity name = self sourceFamixEntity name ])
		ifTrue: [ "The current node is the root of the analysis" self sourceFamixEntity fast: aFASTJavaMethodEntity ]
		ifFalse: [ "The method is declared inside the root, so we need to use the sourceAnchor to be sure of the binding"
			((self sourceFamixEntity allToScope: FamixTMethod)
				select: [ :method | 
					method name = aFASTJavaMethodEntity name
						and: [ method hasSourceAnchor
								and: [ | sourceStartPos |
									sourceStartPos := self sourceFamixEntityStartPo.
									method sourceAnchor startPos - sourceStartPos <= (aFASTJavaMethodEntity startPos + 1)
										and: [ method sourceAnchor endPos - sourceStartPos >= (aFASTJavaMethodEntity endPos - 1) ] ] ] ])
				ifNotEmpty: [ :methodsWithCorrectName | (self sortCollection: methodsWithCorrectName byDistanceWith: aFASTJavaMethodEntity) first fast: aFASTJavaMethodEntity ] ].
	aFASTJavaMethodEntity statements do: [ :statement | self accept: statement ].
	aFASTJavaMethodEntity parameters do: [ :parameter | self accept: parameter ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation [
	(self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			(invoc hasSourceAnchor
				ifTrue: [ | sourceStartPos |
					sourceStartPos := self sourceFamixEntityStartPo.
					invoc sourceAnchor startPos - sourceStartPos >= (aFASTJavaMethodInvocation startPos - 1)
						and: [ invoc sourceAnchor endPos - sourceStartPos <= (aFASTJavaMethodInvocation endPos + 1) ] ]
				ifFalse: [ invoc to first name beginsWith: aFASTJavaMethodInvocation name ]) ])
		ifNotEmpty: [ :collectionOfPotentialInvoc | 
					(collectionOfPotentialInvoc sorted: [ :invoc1 :invoc2 | invoc1 sourceAnchor intervalAsCharPos size > invoc2 sourceAnchor intervalAsCharPos size ]) first
				fast: aFASTJavaMethodInvocation ].
	super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewClassExpression: aFASTJavaNewClassExpression [
	"the dectected binding must be an anonymous class (because we are in a FASTJavaNewClassExpression and not in a new Expression)"

	(self sourceFamixEntity allToScope: FamixTClass)
		select: [ :class | 
			class isAnonymousClass
				and: [ (class name includesSubstring: '(' , aFASTJavaNewClassExpression type fullName , ')')
						and: [ class hasSourceAnchor
								and: [ | sourceStartPos |
									sourceStartPos := self sourceFamixEntityStartPo.
									class sourceAnchor startPos - sourceStartPos >= (aFASTJavaNewClassExpression startPos - 1)
										and: [ class sourceAnchor endPos - sourceStartPos <= (aFASTJavaNewClassExpression endPos + 1) ] ] ] ] ]
		thenDo: [ :newClassExpression | aFASTJavaNewClassExpression famixType: newClassExpression ].
	aFASTJavaNewClassExpression children do: [ :child | self accept: child ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaNewExpression: aFASTJavaNewExpression [
	"We base the selection on sourceAnchor because it is the the most precise thing we have
	However, we accept a one character error because it can happens with the source anchor of verveineJ"

	(self sourceFamixEntity queryAllOutgoingInvocations
		select: [ :invoc | 
			invoc hasSourceAnchor
				and: [ | sourceStartPos |
					sourceStartPos := self sourceFamixEntityStartPo.
					invoc sourceAnchor startPos - sourceStartPos
						>= (aFASTJavaNewExpression startPos - 1)
						and: [ invoc sourceAnchor endPos - sourceStartPos
								<= (aFASTJavaNewExpression endPos + 1) ] ] ])
		ifNotEmpty: [ :collectionOfPotentialInvoc | 
			(self
				sortCollection: collectionOfPotentialInvoc
				byDistanceWith: aFASTJavaNewExpression) first
				fast: aFASTJavaNewExpression ].
	super visitFASTJavaNewExpression: aFASTJavaNewExpression
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaParameter: aFASTJavaParameter [
	(self determineAttributeWithName: aFASTJavaParameter variable name from: aFASTJavaParameter)
		ifNotNil: [ :structuralEntity | structuralEntity fastDeclaration add: aFASTJavaParameter ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator [
	(self determineAttributeWithName: aFASTJavaVariableDeclarator variable name from: aFASTJavaVariableDeclarator)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastDeclaration add: aFASTJavaVariableDeclarator ].		
	super visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator.
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTReturnStatement: aFASTReturnStatement [
	aFASTReturnStatement expression
		ifNotNil: [ self accept: aFASTReturnStatement expression ]
]

{ #category : #visitor }
CRFBinderVisitor >> visitFASTVariableExpression: aFASTVariableExpression [
	(self determineAttributeWithName: aFASTVariableExpression name from: aFASTVariableExpression)
		ifNotNil:
			[ :structuralEntity | structuralEntity fastAccesses add: aFASTVariableExpression ].
	super visitFASTVariableExpression: aFASTVariableExpression.
]
