Class {
	#name : #CRFRemoveReferencesTestTest,
	#superclass : #CRFRemoveBindingTest,
	#category : #'Carrefour-RemoveBinding-Tests'
}

{ #category : #running }
CRFRemoveReferencesTestTest >> famixTestMethod [
	^ (self famixModel allMethods select: [ :method | method name = 'test' ]) first
]

{ #category : #running }
CRFRemoveReferencesTestTest >> fastTestMethod [
	^ (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'test' ]) first
]

{ #category : #running }
CRFRemoveReferencesTestTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self fastMethodTestString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor bindFastModel: self fastModel fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'test' ]) first.
]

{ #category : #running }
CRFRemoveReferencesTestTest >> testFromFASTRemoveMethodBinding [
	self fastTestMethod removeBinding.
	self assert: self fastTestMethod famix equals: nil.
	self assert: self famixTestMethod fast equals: nil
]
