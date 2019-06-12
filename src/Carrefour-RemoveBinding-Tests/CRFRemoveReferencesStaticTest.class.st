Class {
	#name : #CRFRemoveReferencesStaticTest,
	#superclass : #CRFRemoveBindingTest,
	#category : #'Carrefour-RemoveBinding-Tests'
}

{ #category : #running }
CRFRemoveReferencesStaticTest >> famixTestMethod [
	^ (self famixModel allMethods select: [ :method | method name = '<Initializer>' ]) first
]

{ #category : #running }
CRFRemoveReferencesStaticTest >> fastTestMethod [
	^ (self fastModel allWithType: FASTJavaInitializer) first
]

{ #category : #running }
CRFRemoveReferencesStaticTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self fastMethodStaticInitialization)
		name: #fastModel;
		yourself.
	CRFBinderVisitor bindFastModel: self fastModel fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = '<Initializer>' ]) first
]

{ #category : #running }
CRFRemoveReferencesStaticTest >> testFromFASTRemoveStaticInitializerBinding [
	self fastTestMethod removeBinding.
	self assert: self fastTestMethod famix equals: nil.
	self assert: self famixTestMethod fast equals: nil
]
