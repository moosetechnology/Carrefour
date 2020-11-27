Class {
	#name : #CRFBindingAttributeInitialisationTest,
	#superclass : #CRFBindingTest,
	#instVars : [
		'helloClass'
	],
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingAttributeInitialisationTest >> setUp [
	super setUp.
	helloClass := (self famixModel allModelClasses detect: [:class | class name = #'Hello']).
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: (self sourceCodeOfClass: helloClass))
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: helloClass
]

{ #category : #running }
CRFBindingAttributeInitialisationTest >> sourceCodeOfClass: aClass [
	^ self fastString copyFrom: aClass sourceAnchor startPos to: aClass sourceAnchor endPos  
]

{ #category : #running }
CRFBindingAttributeInitialisationTest >> testAllFamixAttributeAreBound [
	self assert: helloClass attributes size equals: 9.
	helloClass attributes do: [ :attribute |
		self assert: attribute fastDeclaration isNotEmpty ]
]

{ #category : #running }
CRFBindingAttributeInitialisationTest >> testAllFamixAttributeInitializationAreBound [
	| invocationsFamix invocationsFast |
	invocationsFamix := (((self famixModel allWithType: FAMIXInvocation)
		select: [ :invoc | invoc signature beginsWith: #'Canard(' ])
		asOrderedCollection
		sorted:
			[ :invocA :invocB | invocA sourceAnchor startPos < invocB sourceAnchor startPos ]).
	invocationsFast := (((self fastModel allWithType: FASTJavaNewExpression)
		select:
			[ :newClassExpression | newClassExpression type typeName name = #Canard ])
		asOrderedCollection
		sorted: #startPos ascending).
	invocationsFamix doWithIndex: [ :invocationFamix :index |
		| invocationFast |
		invocationFast := invocationsFast at: index.
		self assert: invocationFamix fast equals: invocationFast.
		self assert: invocationFast famix equals: invocationFamix ]
]
