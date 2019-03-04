Class {
	#name : #CRFBindingClassPropertyAccessTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingClassPropertyAccessTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodClassPropertyAccess)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'classPropertyAccess' ]) first
]

{ #category : #tests }
CRFBindingClassPropertyAccessTest >> testClassPropertyBinding [
	self assert: (self fastModel allWithType: FASTJavaClassProperty) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne.
]

{ #category : #tests }
CRFBindingClassPropertyAccessTest >> testClassPropertyBindingFamixToFast [
	self assert: (self fastModel allWithType: FASTJavaClassProperty) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne fastAccesses anyOne.
]

{ #category : #tests }
CRFBindingClassPropertyAccessTest >> testClassPropertySize [
	self assert: (self fastModel allWithType: FASTJavaClassProperty) size equals: 1.
]
