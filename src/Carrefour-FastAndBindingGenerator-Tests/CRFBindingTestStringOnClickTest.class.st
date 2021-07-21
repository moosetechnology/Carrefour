"
This class contains tests
"
Class {
	#name : #CRFBindingTestStringOnClickTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingTestStringOnClickTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new 
		              parseCodeMethodString:
			              self fastMethodOnInternalMethodClick)
		             name: #fastModel;
		             yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods detect: [ :method | 
				 method name = 'onInternalMethod' ]).
	self fastModel metamodel: CRFModel metamodel.
]

{ #category : #running }
CRFBindingTestStringOnClickTest >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'onInternalMethod' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famixMethod equals: (self famixModel allMethods select: [ :method | method name = 'onInternalMethod' ]) first.

]

{ #category : #running }
CRFBindingTestStringOnClickTest >> testResolveExternalLocalVariable [
	self assert: (self famixModel allLocalVariables select: [ :attribute | attribute name = 'someLocalVariableDefineInExternalScope' ]) first fastAccesses size equals: 1
]
