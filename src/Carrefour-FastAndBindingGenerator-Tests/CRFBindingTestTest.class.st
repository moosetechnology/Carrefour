Class {
	#name : #CRFBindingTestTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingTestTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodTestString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'test' ]) first
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationInnerPrintLN [
	self
		assert:
			((self famixModel allMethods select: [ :method | method name = 'onClick' ]) first outgoingInvocations
				select: [ :invocation | invocation signature = 'println(event + " I''m calling " + hello)' ]) first fast
		equals:
			((self fastModel allWithType: FASTJavaMethodInvocation)
				select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'onClick' ] ]) first.
	self
		assert:
			((self famixModel allMethods select: [ :method | method name = 'onClick' ]) first outgoingInvocations
				select: [ :invocation | invocation signature = 'println(event +  I''m calling  + hello)' ]) first
		equals:
			((self fastModel allWithType: FASTJavaMethodInvocation)
				select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'onClick' ] ]) first famix
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationPrintLN [
	self
		assert: ((self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations select: [ :invocation | invocation signature = 'println(patate + hello)' ]) first fast
		equals: ((self fastModel allWithType: FASTJavaMethodInvocation) select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'test' ] ])  first.
	self
		assert: ((self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations select: [ :invocation | invocation signature = 'println(patate + hello)' ]) first
		equals:((self fastModel allWithType: FASTJavaMethodInvocation) select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'test' ] ]) first famix
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationReturnNumber [
	self
		assert:
			((self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations
				select: [ :invocation | invocation signature = 'returnNumber(5)' ]) first fast
		equals: ((self fastModel allWithType: FASTJavaMethodInvocation) select: [:fastMethodInvocation | fastMethodInvocation name = 'returnNumber' ]) first.
	self
		assert:
			((self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations
				select: [ :invocation | invocation signature = 'returnNumber(5)' ]) first
		equals: ((self fastModel allWithType: FASTJavaMethodInvocation) select: [:fastMethodInvocation | fastMethodInvocation name = 'returnNumber' ]) first famix 
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodOnClick [
	self
		assert: (self famixModel allMethods select: [ :method | method name = 'onClick' ]) first fast
		equals: (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'onClick' ]) first.
	self
		assert: (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'onClick' ]) first famix
		equals: (self famixModel allMethods select: [ :method | method name = 'onClick' ]) first
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodTest [
	self assert: (self famixModel allMethods select: [ :method | method name = 'test' ]) first fast equals: (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'test' ]) first.
	self assert: (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'test' ]) first famix equals: (self famixModel allMethods select: [ :method | method name = 'test' ]) first
]

{ #category : #tests }
CRFBindingTestTest >> testStubAttributeUsages [
	self
		assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'out' ]) first fastAccesses first
		equals: (self fastModel allWithType: FASTJavaClassProperty) first.
	self
		assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'out' ]) first
		equals: (self fastModel allWithType: FASTJavaClassProperty) first famixVariable
]

{ #category : #tests }
CRFBindingTestTest >> testTypeAccess [
	self
		assert: (self famixModel allTypes select: [ :type | type name = 'System' ]) first fastAccesses first
		equals: ((self fastModel allWithType: FASTNamedEntity) select: [ :type | type name = 'System' ]) first.
		
	self
		assert: (self famixModel allTypes select: [ :type | type name = 'System' ]) first
		equals: ((self fastModel allWithType: FASTNamedEntity) select: [ :type | type name = 'System' ]) first famixVariable
]

{ #category : #tests }
CRFBindingTestTest >> testVariableDeclarator [
	self
		assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'hello' ]) first fastAssignement first
		equals: (self fastModel allWithType: FASTJavaAssignementExpression) first.
	self
		assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'hello' ]) first
		equals: (self fastModel allWithType: FASTJavaAssignementExpression) first famixVariable 
]
