Class {
	#name : #CRFBindingClassDefinitionTest,
	#superclass : #CRFBindingTest,
	#instVars : [
		'helloClass'
	],
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingClassDefinitionTest >> setUp [
	super setUp.
	helloClass := (self famixModel allModelClasses detect: [:class | class name = #'Hello']).
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: (self sourceCodeOfClass: helloClass))
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: helloClass
]

{ #category : #running }
CRFBindingClassDefinitionTest >> sourceCodeOfClass: aClass [
	^ self fastString copyFrom: aClass sourceAnchor startPos to: aClass sourceAnchor endPos  
]

{ #category : #running }
CRFBindingClassDefinitionTest >> testClassDefinitionIsBinded [
	self assert: helloClass fastTypeDefinition equals: (fastModel allWithType: FASTJavaClassDeclaration) anyOne.
	self assert: helloClass equals: (fastModel allWithType: FASTJavaClassDeclaration) anyOne famixTypeDefinition.
]
