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
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'doubleAffectation' ]) 
]

{ #category : #running }
CRFBindingDoubleAffectationTest >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'doubleAffectation' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famixMethod equals: (self famixModel allMethods select: [ :method | method name = 'doubleAffectation' ]) first.

]

{ #category : #running }
CRFBindingDoubleAffectationTest >> testBindingSameClassAffectation [
	self 
		assertCollection:  ((self famixModel allUsing: FamixTLocalVariable) select: [ :localVariable | localVariable parentBehaviouralEntity name = 'doubleAffectation' ])  
		hasSameElements: ((self fastModel allWithType: FASTJavaVariableDeclarator) collect: #famixVariable).

]
