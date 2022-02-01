Class {
	#name : #CRFBindingInterfaceDefinitionTest,
	#superclass : #CRFBindingTest,
	#instVars : [
		'helloClass'
	],
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingInterfaceDefinitionTest >> setUp [
	super setUp.
	helloClass := (self famixModel allModelClasses detect: [:class | class name = #'MyInterface']).
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: (self sourceCodeOfClass: helloClass))
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: helloClass
]

{ #category : #running }
CRFBindingInterfaceDefinitionTest >> sourceCodeOfClass: aClass [
	^ self fastMyInterfaceString copyFrom: aClass sourceAnchor startPos to: aClass sourceAnchor endPos  
]

{ #category : #running }
CRFBindingInterfaceDefinitionTest >> testAttributesOfInterfaceAreBinded [
	self assert: helloClass attributes size equals: 1.
	helloClass attributes do: [ :attribute |
		self assert: attribute fastDeclaration isNotEmpty ]
]

{ #category : #running }
CRFBindingInterfaceDefinitionTest >> testInterfaceDefinitionIsBinded [
	self assert: helloClass fastTypeDefinition equals: (fastModel allWithType: FASTJavaInterfaceDeclaration) anyOne.
	self assert: helloClass equals: (fastModel allWithType: FASTJavaInterfaceDeclaration) anyOne famixTypeDefinition.
]
