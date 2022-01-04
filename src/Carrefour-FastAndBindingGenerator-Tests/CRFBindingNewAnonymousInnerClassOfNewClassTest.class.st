Class {
	#name : #CRFBindingNewAnonymousInnerClassOfNewClassTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingNewAnonymousInnerClassOfNewClassTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodNewAnonymousOfInnerClassFromAnonymousAndAffectation)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'newAnonymousOfInnerClassFromAnonymousAndAffectation' ])
]

{ #category : #running }
CRFBindingNewAnonymousInnerClassOfNewClassTest >> testBindingClassCarrefour [
	self assert: (self fastModel allWithType: FASTJavaNewClassExpression) anyOne famixType equals: (self famixModel allModelClasses select: [ :class | class name = '_Anonymous(Oupsi)' ]) anyOne.
	self assert: (self famixModel allModelClasses select: [ :class | class name = '_Anonymous(Oupsi)' ]) anyOne fastDeclaration anyOne equals: (self fastModel allWithType: FASTJavaNewClassExpression) anyOne
]

{ #category : #running }
CRFBindingNewAnonymousInnerClassOfNewClassTest >> testBindingNewClassInvocationCarrefour [
	self assert: (self fastModel allWithType: FASTJavaNewClassExpression) anyOne famixInvocation equals: ((self famixModel allUsing: FamixTInvocation) detect: [ :invocation | invocation signature = '_Anonymous(Oupsi)()' ]).
	
	self assert: ((self famixModel allUsing: FamixTInvocation) detect: [ :invocation | invocation signature = '_Anonymous(Oupsi)()' ]) fast equals: (self fastModel allWithType: FASTJavaNewClassExpression) anyOne
]
