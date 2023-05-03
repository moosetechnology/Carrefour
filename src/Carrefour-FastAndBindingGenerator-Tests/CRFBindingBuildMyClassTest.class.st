Class {
	#name : #CRFBindingBuildMyClassTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #initialization }
CRFBindingBuildMyClassTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodMyClassBuild)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'build' and: [ (method atScope: FamixTClass) anyOne name = 'MyClass' ] ])
]

{ #category : #initialization }
CRFBindingBuildMyClassTest >> testAStringIsCorrectlyBind [

	self
		assert:
			(self fastModel allWithType: FASTJavaAssignmentExpression) anyOne
				famixVariable
		equals:
			((self famixModel allWithType: FamixJavaAttribute) detect: [ :att | 
				 att name = 'aString' and: [ 
					 (att atScope: FamixTClass) anyOne name = 'MyClass' ] ])
]
