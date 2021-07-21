Class {
	#name : #CRFBindingMultilineTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingMultilineTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodNewMultiline)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'multiLineNew' ])
]

{ #category : #running }
CRFBindingMultilineTest >> testMultiline [
	self assert: (fastModel allWithType: FASTJavaNewExpression) anyOne famixInvocation equals: (self famixModel allMethods select: [ :method | method name = 'multiLineNew' ]) first outgoingInvocations first.
	self assert: (fastModel allWithType: FASTJavaNewExpression) anyOne equals: (self famixModel allMethods select: [ :method | method name = 'multiLineNew' ]) first outgoingInvocations first fast
]
