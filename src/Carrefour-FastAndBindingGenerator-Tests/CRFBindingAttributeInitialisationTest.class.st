Class {
	#name : #CRFBindingAttributeInitialisationTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingAttributeInitialisationTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: self fastString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: (self famixModel allModelClasses detect: [:class | class name = #'Hello'])
]

{ #category : #running }
CRFBindingAttributeInitialisationTest >> testAllFamixAttributeAreBound [
	| helloClass |
	helloClass := (self famixModel allModelClasses) detect: [ :class | class name = #'Hello' ].
	self assert: helloClass attributes size equals: 7.
	helloClass attributes do: [ :attribute |
		self assert: attribute fastDeclaration isNotEmpty ]
]

{ #category : #running }
CRFBindingAttributeInitialisationTest >> testAllFamixAttributeInitializationAreBound [
	| invocationsFamix invocationsFast |
	invocationsFamix := (((self famixModel allWithType: FAMIXInvocation)
		select: [ :invoc | invoc signature = #'Canard()' ])
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
