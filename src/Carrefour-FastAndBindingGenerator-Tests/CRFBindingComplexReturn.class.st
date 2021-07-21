Class {
	#name : #CRFBindingComplexReturn,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingComplexReturn >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodGetMenuIcon)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'getMenuIcon' ])
]

{ #category : #running }
CRFBindingComplexReturn >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'getMenuIcon' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famixMethod equals: (self famixModel allMethods select: [ :method | method name = 'getMenuIcon' ]) first.

]

{ #category : #running }
CRFBindingComplexReturn >> testBindingNewExpression [
	self
		assert:
			((self famixModel allMethods select: [ :method | method name = 'getMenuIcon' ]) first outgoingInvocations
				select: [ :invoc | invoc signature = 'ImageButtonTreeUtils(i18n.confirmGroupRemoval(),path,fileName,i18n.confirmGroupRemoval())' ]) first fast
		equals: (self fastModel allWithType: FASTJavaNewExpression) first.
	self
		assert:
			((self famixModel allMethods select: [ :method | method name = 'getMenuIcon' ]) first outgoingInvocations
				select: [ :invoc | invoc signature = 'ImageButtonTreeUtils(i18n.confirmGroupRemoval(),path,fileName,i18n.confirmGroupRemoval())' ]) first
		equals: (self fastModel allWithType: FASTJavaNewExpression) first famixInvocation
]
