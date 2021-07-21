Class {
	#name : #CRFBindingMainTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingMainTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodMainString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'main' ])
]

{ #category : #tests }
CRFBindingMainTest >> testBindingMethod [
	self
		assert: (self famixModel allMethods select: [ :method | method name = 'main' ]) first fast
		equals: self fastModel allFASTJavaMethodEntity first.
	self
		assert: self fastModel allFASTJavaMethodEntity first famixMethod
		equals: (self famixModel allMethods select: [ :method | method name = 'main' ]) first
]
