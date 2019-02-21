Class {
	#name : #CRFBindingDoubleAffectationTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingDoubleAffectationTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodDoubleAffectation)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'doubleAffectation' ]) first
]

{ #category : #running }
CRFBindingDoubleAffectationTest >> testBindingFirstAffectation [
	self 
		assert: ((self famixModel allWithType: FAMIXLocalVariable) select: [ :localVariable | localVariable parentBehaviouralEntity name = 'doubleAffectation' ]) first 
		equals: (self fastModel allWithType: FASTJavaVariableDeclarator) first famixVariable.

]

{ #category : #running }
CRFBindingDoubleAffectationTest >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'doubleAffectation' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famix equals: (self famixModel allMethods select: [ :method | method name = 'doubleAffectation' ]) first.

]

{ #category : #running }
CRFBindingDoubleAffectationTest >> testBindingSecondAffectation [
	self 
		assert: ((self famixModel allWithType: FAMIXLocalVariable) select: [ :localVariable | localVariable parentBehaviouralEntity name = 'doubleAffectation' ]) second 
		equals: (self fastModel allWithType: FASTJavaVariableDeclarator) second famixVariable.

]
