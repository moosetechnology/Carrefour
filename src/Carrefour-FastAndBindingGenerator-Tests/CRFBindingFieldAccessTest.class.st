Class {
	#name : #CRFBindingFieldAccessTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingFieldAccessTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodFieldAccess)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'fieldAccess' ])
]

{ #category : #tests }
CRFBindingFieldAccessTest >> testClassPropertySize [
	self assert: (self fastModel allWithType: FASTJavaFieldAccess) size equals: 2.
]

{ #category : #tests }
CRFBindingFieldAccessTest >> testFieldAccessBinding [
	self assert: (self fastModel allWithType: FASTJavaFieldAccess) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccessTest >> testFieldAccessClassPropertyBinding [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'classProperty' ]) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccessTest >> testFieldAccessClassPropertyBindingFamixToFast [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'classProperty' ]) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne fastAccesses anyOne.
]

{ #category : #tests }
CRFBindingFieldAccessTest >> testFieldAccessPatateBinding [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'patate' ]) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccessTest >> testFieldAccessPatateBindingFamixToFast [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'patate' ]) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne fastAccesses anyOne.
]
