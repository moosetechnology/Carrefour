Class {
	#name : #CRFBindingClassPropertyAccess,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingClassPropertyAccess >> setUp [
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
CRFBindingClassPropertyAccess >> testClassPropertyBinding [
	self assert: (self fastModel allWithType: FASTJavaClassProperty) anyOne famixVariable equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne.
]

{ #category : #tests }
CRFBindingClassPropertyAccess >> testClassPropertyBindingFamixToFast [
	self assert: (self fastModel allWithType: FASTJavaClassProperty) anyOne equals: (self famixModel allAttributes select: [:attribute | attribute name = 'classProperty' ]) anyOne fastAccesses anyOne.
]

{ #category : #tests }
CRFBindingClassPropertyAccess >> testClassPropertySize [
	self assert: (self fastModel allWithType: FASTJavaClassProperty) size equals: 1.
]
