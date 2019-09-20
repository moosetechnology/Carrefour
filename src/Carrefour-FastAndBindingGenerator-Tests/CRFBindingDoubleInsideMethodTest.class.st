Class {
	#name : #CRFBindingDoubleInsideMethodTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingDoubleInsideMethodTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodDoubleInsideMethod )
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'doubleInsideMethod' ]) first
]

{ #category : #tests }
CRFBindingDoubleInsideMethodTest >> testLabel41Binding [
	self
		assert: ((fastModel allWithType: FASTJavaVariableExpression) select: [ :varExpre | varExpre name = 'label41' ]) anyOne parentNode expression famix
		equals: ((famixModel allUsing: FamixTInvocation) select: [ :invoc | invoc signature = 'BLLabel("inside ")' ]) anyOne.
	self
		assert: ((fastModel allWithType: FASTJavaVariableExpression) select: [ :varExpre | varExpre name = 'label41' ]) anyOne parentNode expression
		equals: ((famixModel allUsing: FamixTInvocation) select: [ :invoc | invoc signature = 'BLLabel("inside ")' ]) anyOne fast
]

{ #category : #tests }
CRFBindingDoubleInsideMethodTest >> testLabel42Binding [
	self
		assert: ((fastModel allWithType: FASTJavaVariableExpression) select: [ :varExpre | varExpre name = 'label42' ]) anyOne parentNode expression famix
		equals: ((famixModel allUsing: FamixTInvocation) select: [ :invoc | invoc signature = 'BLLabel("inside inside")' ]) anyOne.
	self
		assert: ((fastModel allWithType: FASTJavaVariableExpression) select: [ :varExpre | varExpre name = 'label42' ]) anyOne parentNode expression
		equals: ((famixModel allUsing: FamixTInvocation) select: [ :invoc | invoc signature = 'BLLabel("inside inside")' ]) anyOne fast
]

{ #category : #tests }
CRFBindingDoubleInsideMethodTest >> testLabelBinding [
	self
		assert: ((fastModel allWithType: FASTJavaVariableExpression) select: [ :varExpre | varExpre name = 'label' ]) anyOne parentNode expression famix
		equals: ((famixModel allUsing: FamixTInvocation) select: [ :invoc | invoc signature = 'BLLabel("out")' ]) anyOne.
	self
		assert: ((fastModel allWithType: FASTJavaVariableExpression) select: [ :varExpre | varExpre name = 'label' ]) anyOne parentNode expression
		equals: ((famixModel allUsing: FamixTInvocation) select: [ :invoc | invoc signature = 'BLLabel("out")' ]) anyOne fast
]
