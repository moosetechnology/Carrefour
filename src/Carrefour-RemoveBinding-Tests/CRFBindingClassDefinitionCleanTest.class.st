Class {
	#name : #CRFBindingClassDefinitionCleanTest,
	#superclass : #CRFRemoveBindingTest,
	#instVars : [
		'helloClass'
	],
	#category : #'Carrefour-RemoveBinding-Tests'
}

{ #category : #running }
CRFBindingClassDefinitionCleanTest >> setUp [
	super setUp.
	helloClass := (self famixModel allModelClasses detect: [:class | class name = #'Hello']).
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: (self sourceCodeOfClass: helloClass))
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: helloClass
]

{ #category : #running }
CRFBindingClassDefinitionCleanTest >> sourceCodeOfClass: aClass [
	^ self fastString copyFrom: aClass sourceAnchor startPos to: aClass sourceAnchor endPos  
]

{ #category : #running }
CRFBindingClassDefinitionCleanTest >> testClassDefinitionIsBinded [

	self
		assert: helloClass fastTypeDefinition
		equals: (fastModel allWithType: FASTJavaClassDeclaration) anyOne.
	self
		assert: helloClass
		equals: (fastModel allWithType: FASTJavaClassDeclaration) anyOne
				famixTypeDefinition.
	(fastModel allWithType: FASTJavaClassDeclaration) anyOne fullClean.
	self assert: helloClass fastTypeDefinition equals: nil.
	self assert: (fastModel allWithType: FASTJavaClassDeclaration) isEmpty
]
