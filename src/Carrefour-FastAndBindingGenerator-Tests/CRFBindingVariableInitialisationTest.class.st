Class {
	#name : #CRFBindingVariableInitialisationTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingVariableInitialisationTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodTestString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'test' ]) first.
	
]

{ #category : #running }
CRFBindingVariableInitialisationTest >> testBindingVariableInitialisation [
]
