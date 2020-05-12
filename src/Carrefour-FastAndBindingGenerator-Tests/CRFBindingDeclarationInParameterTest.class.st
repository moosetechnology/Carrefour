"
This class contains tests
"
Class {
	#name : #CRFBindingDeclarationInParameterTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingDeclarationInParameterTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodDeclarationInParameter)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'decla' ]) first
]

{ #category : #running }
CRFBindingDeclarationInParameterTest >> testParameterIsDeclaration [
	| variableExpressions |
	variableExpressions := (self fastModel allWithType: FASTJavaVariableExpression) asOrderedCollection sort: #startPos ascending.
	self assert: variableExpressions first parentNode class equals: FASTJavaParameter.
	self assert: (variableExpressions first famixVariable fastDeclaration includes: variableExpressions first).
	self deny: (variableExpressions first famixVariable fastDeclaration includes: variableExpressions second)
]
