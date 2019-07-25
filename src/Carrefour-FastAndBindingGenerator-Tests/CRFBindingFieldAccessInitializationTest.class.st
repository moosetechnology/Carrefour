Class {
	#name : #CRFBindingFieldAccessInitializationTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingFieldAccessInitializationTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodFieldAccessInitialization)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'useThisForFieldAccess' ]) first
]

{ #category : #tests }
CRFBindingFieldAccessInitializationTest >> testClassPropertySize [
	self assert: (self fastModel allWithType: FASTJavaFieldAccess) size equals: 1.
]

{ #category : #tests }
CRFBindingFieldAccessInitializationTest >> testFieldAccessBinding [
	self assert: (self fastModel allWithType: FASTJavaFieldAccess) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccessInitializationTest >> testFieldAccessPatateBinding [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'patate' ]) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccessInitializationTest >> testFieldAccessPatateBindingFamixToFast [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'patate' ]) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne fastAccesses anyOne.
]
