Class {
	#name : #CRFBindingStaticMethodTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingStaticMethodTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: ((self famixModel allModelMethods select: [ :method | method name = '<Initializer>' ]) first sourceText))
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = '<Initializer>' ]) first
]

{ #category : #tests }
CRFBindingStaticMethodTest >> testBindingStaticInitialization [
	self assert: (self famixModel allMethods select: [ :method | method name = '<Initializer>' ]) first fast equals: (self fastModel allWithType: FASTJavaInitializer) first.
	self assert: (self fastModel allWithType: FASTJavaInitializer) first famix equals: (self famixModel allMethods select: [ :method | method name = '<Initializer>' ]) first
]
