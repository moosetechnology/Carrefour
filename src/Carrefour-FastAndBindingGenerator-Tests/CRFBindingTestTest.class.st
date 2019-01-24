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

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationPrintLN [
	self
		assert: (self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations first fast
		equals: (self fastModel allWithType: FASTJavaMethodInvocation) second.
	self
		assert: (self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations first
		equals: (self fastModel allWithType: FASTJavaMethodInvocation) second famix
]

{ #category : #tests }
CRFBindingTestTest >> testBindingMethodInvocationReturnNumber [
	self
		assert: (self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations second fast
		equals: (self fastModel allWithType: FASTJavaMethodInvocation) first.
	self
		assert: (self famixModel select: [ :method | method name = 'test' ]) first outgoingInvocations second
		equals: (self fastModel allWithType: FASTJavaMethodInvocation) first famix
]
