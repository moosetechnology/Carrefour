Class {
	#name : #CRFBindingReturnNumberTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingReturnNumberTest >> setUp [
	super setUp.
	fastModel := (MooseModel importFromMSEStream: (ReadStream on: self fastMethodTestString))
		name: #fastModel;
		yourself.
	CRFBinderVisitor bindFastModel: self fastModel fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'returnNumber' ]) first
]

{ #category : #running }
CRFBindingReturnNumberTest >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'returnNumber' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famix equals: (self famixModel allMethods select: [ :method | method name = 'returnNumber' ]) first.

]
