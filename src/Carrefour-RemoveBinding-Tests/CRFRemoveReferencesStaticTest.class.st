Class {
	#name : #CRFRemoveReferencesStaticTest,
	#superclass : #CRFRemoveBindingTest,
	#category : #'Carrefour-RemoveBinding-Tests'
}

{ #category : #running }
CRFRemoveReferencesStaticTest >> famixTestMethod [
	^ self famixModel allMethods detect: [ :method | method name = '<Initializer>' ]
]

{ #category : #running }
CRFRemoveReferencesStaticTest >> fastTestMethod [
	^ (self fastModel allWithType: FASTJavaInitializer) first
]

{ #category : #running }
CRFRemoveReferencesStaticTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodStaticInitialization)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method mooseName = #'hello::Hello.<Initializer>()' ])
]

{ #category : #running }
CRFRemoveReferencesStaticTest >> testFromFASTRemoveStaticInitializerBinding [
	self fastTestMethod removeBinding.
	self assert: self fastTestMethod famix equals: nil.
	self assert: self famixTestMethod fast equals: nil
]
