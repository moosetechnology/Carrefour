Class {
	#name : #CRFBindingTestTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingTestTest >> setUp [
	super setUp.
	fastModel := (MooseModel importFromMSEStream: (ReadStream on: self fastMethodTestString))
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'test' ]) first
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethod [
	self
		assert: (self famixModel allMethods select: [ :method | method name = 'test' ]) first fast
		equals: self fastModel allFASTJavaMethodEntity first.
	self
		assert: self fastModel allFASTJavaMethodEntity first famix
		equals: (self famixModel allMethods select: [ :method | method name = 'test' ]) first
]