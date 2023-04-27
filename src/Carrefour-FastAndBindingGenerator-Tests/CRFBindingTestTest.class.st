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
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'test' ])
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationInnerPrintLN [
	self
		assert:
			(((self famixModel allMethods select: [ :method | method name = 'onClick' ]) sort: [ :method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first outgoingInvocations select: [ :invocation | invocation signature = 'println(event + " I''m calling " + hello)' ])
				first fast
		equals:
			((self fastModel allWithType: FASTJavaMethodInvocation)
				select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'onClick' ] ]) first.
	self
		assert:
			(((self famixModel allMethods select: [ :method | method name = 'onClick' ]) sort: [ :method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first outgoingInvocations select: [ :invocation | invocation signature = 'println(event + " I''m calling " + hello)' ])
				first
		equals:
			((self fastModel allWithType: FASTJavaMethodInvocation)
				select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'onClick' ] ]) first famixInvocation
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationPrintLN [
	self
		assert: ((self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations select: [ :invocation | invocation signature = 'println(patate + hello)' ]) first fast
		equals: ((self fastModel allWithType: FASTJavaMethodInvocation) select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'test' ] ])  first.
	self
		assert: ((self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations select: [ :invocation | invocation signature = 'println(patate + hello)' ]) first
		equals:((self fastModel allWithType: FASTJavaMethodInvocation) select: [ :fastMethodInvocation | fastMethodInvocation name = 'println' and: [ fastMethodInvocation parentNode parentNode parentNode name = 'test' ] ]) first famixInvocation
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
		equals: ((self fastModel allWithType: FASTJavaMethodInvocation) select: [:fastMethodInvocation | fastMethodInvocation name = 'returnNumber' ]) first famixInvocation
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodOnClick [
	self
		assert: ((self famixModel allMethods select: [ :method | method name = 'onClick' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first fast
		equals: ((self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'onClick' ])sort: [:method1 :method2 | method1 startPos < method2 startPos ]) first.
	self
		assert: ((self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'onClick' ])sort: [:method1 :method2 | method1 startPos < method2 startPos ]) first famixMethod
		equals: ((self famixModel allMethods select: [ :method | method name = 'onClick' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first.
		
	self
		assert: ((self famixModel allMethods select: [ :method | method name = 'onClick' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) second fast
		equals: ((self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'onClick' ])sort: [:method1 :method2 | method1 startPos < method2 startPos ]) second.
	self
		assert: ((self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'onClick' ])sort: [:method1 :method2 | method1 startPos < method2 startPos ]) second famixMethod
		equals: ((self famixModel allMethods select: [ :method | method name = 'onClick' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) second.
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodTest [
	self assert: (self famixModel allMethods select: [ :method | method name = 'test' ]) first fast equals: (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'test' ]) first.
	self assert: (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'test' ]) first famixMethod equals: (self famixModel allMethods select: [ :method | method name = 'test' ]) first
]

{ #category : #tests }
CRFBindingTestTest >> testHelloUsages [
	self assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'hello' ]) first fastAccesses size equals: 5
]

{ #category : #tests }
CRFBindingTestTest >> testNewInnerAssignment [
	self
		assert: (self famixModel allLocalVariables select: [ :localVariable | localVariable name = 'innertButton' ]) anyOne fastDeclaration anyOne
		equals: ((self fastModel allWithType: FASTJavaVariableDeclarator) select: [:variableDeclarator | variableDeclarator variable name = 'innertButton' ]) anyOne. 
	self
		assert: (self famixModel allLocalVariables select: [ :localVariable | localVariable name = 'innertButton' ]) anyOne
		equals: ((self fastModel allWithType: FASTJavaVariableDeclarator) select: [:variableDeclarator | variableDeclarator variable name = 'innertButton' ]) anyOne famixVariable.
]

{ #category : #tests }
CRFBindingTestTest >> testNewInnerClass [
	self
		assert: ((self famixModel allModelClasses select: [ :class | class name includesSubstring: 'Button' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first fastDeclaration anyOne
		equals: ((self fastModel allWithType: FASTJavaNewClassExpression) sort: [:method1 :method2 | method1  startPos < method2  startPos ]) first.
	self
		assert: ((self famixModel allModelClasses select: [ :class | class name includesSubstring: 'Button' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) first
		equals: ((self fastModel allWithType: FASTJavaNewClassExpression) sort: [:method1 :method2 | method1  startPos < method2  startPos ]) first famixType.
		
	self
		assert: ((self famixModel allModelClasses select: [ :class | class name includesSubstring: 'Button' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) second fastDeclaration anyOne
		equals: ((self fastModel allWithType: FASTJavaNewClassExpression) sort: [:method1 :method2 | method1  startPos < method2  startPos ]) second.
	self
		assert: ((self famixModel allModelClasses select: [ :class | class name includesSubstring: 'Button' ]) sort: [:method1 :method2 | method1 sourceAnchor startPos < method2 sourceAnchor startPos ]) second
		equals: ((self fastModel allWithType: FASTJavaNewClassExpression) sort: [:method1 :method2 | method1  startPos < method2  startPos ]) second famixType
]

{ #category : #tests }
CRFBindingTestTest >> testStubAttributeUsagesOnClick [
	self
		assert: ((self famixModel allAttributes select: [ :attribute | attribute name = 'out' ]) first fastAccesses select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'onClick' ]) first
		equals: ((self fastModel allWithType: FASTJavaClassProperty) detect: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'onClick' ]).
	self assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'out' ]) anyOne equals: ((self fastModel allWithType: FASTJavaClassProperty) detect: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'onClick' ]) famixVariable
]

{ #category : #tests }
CRFBindingTestTest >> testStubAttributeUsagesTest [
	self
		assert: ((self famixModel allAttributes select: [ :attribute | attribute name = 'out' ]) first fastAccesses detect: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'test' ])
		equals: ((self fastModel allWithType: FASTJavaClassProperty) detect: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'test' ]).
	self assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'out' ]) first equals: ((self fastModel allWithType: FASTJavaClassProperty) detect: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'test' ]) famixVariable
]

{ #category : #tests }
CRFBindingTestTest >> testTypeAccessOnClick [
	self
		assert: ((self famixModel allTypes select: [ :type | type name = 'System' ]) anyOne fastAccesses select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'onClick' ]) anyOne
		equals: ((self fastModel allWithType: FASTJavaClassProperty) select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'onClick' ]) anyOne type.
	self 
		assert: (self famixModel allTypes select: [ :type | type name = 'System' ]) anyOne 
		equals: ((self fastModel allWithType: FASTJavaClassProperty) select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'onClick' ]) anyOne type famixVariable
]

{ #category : #tests }
CRFBindingTestTest >> testTypeAccessTest [
	self
		assert: ((self famixModel allTypes select: [ :type | type name = 'System' ]) anyOne fastAccesses select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'test' ]) anyOne
		equals: ((self fastModel allWithType: FASTJavaClassProperty) select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'test' ]) anyOne type.
	self assert: (self famixModel allTypes select: [ :type | type name = 'System' ]) anyOne equals: ((self fastModel allWithType: FASTJavaClassProperty) select: [ :fastAccess | (fastAccess atScope: FASTJavaMethodEntity) anyOne name = 'test' ]) anyOne type famixVariable
]

{ #category : #tests }
CRFBindingTestTest >> testVariableDeclarator [
	self
		assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'hello' ]) first fastAssignment first
		equals: (self fastModel allWithType: FASTJavaAssignmentExpression) first.
	self
		assert: (self famixModel allAttributes select: [ :attribute | attribute name = 'hello' ]) first
		equals: (self fastModel allWithType: FASTJavaAssignmentExpression) first famixVariable 
]
