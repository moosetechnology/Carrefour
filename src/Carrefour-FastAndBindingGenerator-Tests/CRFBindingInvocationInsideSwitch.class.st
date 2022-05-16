Class {
	#name : #CRFBindingInvocationInsideSwitch,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #initialization }
CRFBindingInvocationInsideSwitch >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodInvocInSwitch)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'invocInSwitch' ])
]

{ #category : #initialization }
CRFBindingInvocationInsideSwitch >> testCompareToIsBinded [

	self
		assert: (self fastModel allWithType: FASTJavaMethodInvocation) size
		equals: 1.
	self assert:
		(self fastModel allWithType: FASTJavaMethodInvocation) anyOne
			famixInvocation isNotNil.
	self
		assert:
			(self fastModel allWithType: FASTJavaMethodInvocation) anyOne
				famixInvocation fast
		equals:
		(self fastModel allWithType: FASTJavaMethodInvocation) anyOne
]
