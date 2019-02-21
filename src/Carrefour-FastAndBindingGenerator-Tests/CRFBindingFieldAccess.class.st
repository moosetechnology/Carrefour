Class {
	#name : #CRFBindingFieldAccess,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingFieldAccess >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodFieldAccess)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'fieldAccess' ]) first
]

{ #category : #tests }
CRFBindingFieldAccess >> testClassPropertySize [
	self assert: (self fastModel allWithType: FASTJavaFieldAccess) size equals: 2.
]

{ #category : #tests }
CRFBindingFieldAccess >> testFieldAccessBinding [
	self assert: (self fastModel allWithType: FASTJavaFieldAccess) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccess >> testFieldAccessClassPropertyBinding [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'classProperty' ]) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccess >> testFieldAccessClassPropertyBindingFamixToFast [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'classProperty' ]) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne fastAccesses anyOne.
]

{ #category : #tests }
CRFBindingFieldAccess >> testFieldAccessPatateBinding [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'patate' ]) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne.
]

{ #category : #tests }
CRFBindingFieldAccess >> testFieldAccessPatateBindingFamixToFast [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) select: [ :access | access fieldName = 'patate' ]) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'patate' ]) anyOne fastAccesses anyOne.
]
