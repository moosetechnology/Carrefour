Class {
	#name : #CRFBindingAttributeInitialisationTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingAttributeInitialisationTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: self fastString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: (self famixModel allModelClasses detect: [:class | class name = #'Hello'])
]

{ #category : #running }
CRFBindingAttributeInitialisationTest >> testAllFamixAttributeAreBound [
	
]
