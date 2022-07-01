Class {
	#name : #CRFBindingExternalAttributeTest,
	#superclass : #CRFBindingTest,
	#instVars : [
		'helloClass',
		'externalAttributeVar'
	],
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #initialization }
CRFBindingExternalAttributeTest >> setUp [
	super setUp.
	helloClass := (self famixModel allModelClasses detect: [:class | class name = #'Hello']).
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeString: (self sourceCodeOfClass: helloClass))
		name: #fastModel;
		yourself.
	CRFBinderVisitor new bindFastModel: self fastModel fromEntity: helloClass
]

{ #category : #initialization }
CRFBindingExternalAttributeTest >> sourceCodeOfClass: aClass [
	^ self fastString copyFrom: aClass sourceAnchor startPos to: aClass sourceAnchor endPos  
]

{ #category : #initialization }
CRFBindingExternalAttributeTest >> testAccessOfExternalAttribute [

	| externalAttributeVarFast externalAttributeVarFamix |
	externalAttributeVarFast := (((self fastModel allWithType:
		                               FASTJavaMethodEntity) detect: [ :me | 
		                              me name = #innerHelloMethod ]) 
		                             toScope: FASTJavaVariableExpression) 
		                            detect: [ :var | 
		                            var name = #externalAttribute ].
	externalAttributeVarFamix := (self famixModel allWithType:
		                              FamixJavaAttribute) detect: [ :att | 
		                             att name = #externalAttribute ].
	self
		assert: externalAttributeVarFast famixVariable
		equals: externalAttributeVarFamix
]

{ #category : #initialization }
CRFBindingExternalAttributeTest >> testBindInnerAttribute [

	| externalAttributeVarFast externalAttributeVarFamix |
	externalAttributeVarFast := (((self fastModel allWithType:
		                               FASTJavaClassDeclaration) detect: [ :cc | 
		                              cc name = #InnerHello ]) 
		                             toScope: FASTJavaVariableDeclarator) 
		                            detect: [ :var | 
		                            var variable name = #_InnerAtt ].
	externalAttributeVarFamix := (self famixModel allWithType:
		                              FamixJavaAttribute) detect: [ :att | 
		                             att name = #_InnerAtt ].
	self
		assert: externalAttributeVarFast famixVariable
		equals: externalAttributeVarFamix
]
