Class {
	#name : #CRFBindingMethodWithTypeParameter,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingMethodWithTypeParameter >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodMethodWithTypeParameter)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'methodWithTypeParameter' ])
]

{ #category : #running }
CRFBindingMethodWithTypeParameter >> testBindTypeParameter [

	self
		assert: self fastModel allFASTJavaMethodEntity first typeParameters anyOne famixTypeDefinition
		equals: (self famixModel allMethods select: [ :method | 
				 method name = 'methodWithTypeParameter' ]) first declaredType
]

{ #category : #running }
CRFBindingMethodWithTypeParameter >> testBindingMethod [

	self
		assert: (self famixModel allMethods select: [ :method | 
				 method name = 'methodWithTypeParameter' ]) first fast
		equals: self fastModel allFASTJavaMethodEntity first.
	self
		assert: self fastModel allFASTJavaMethodEntity first famixMethod
		equals: (self famixModel allMethods select: [ :method | 
				 method name = 'methodWithTypeParameter' ]) first
]
