Class {
	#name : #CRFBindingBuildLienSimpleTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingBuildLienSimpleTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self fastMethodBuildLienSimple)
		name: #fastModel;
		yourself.
	CRFBinderVisitor bindFastModel: self fastModel fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'buildLienSimple' ]) first
]

{ #category : #tests }
CRFBindingBuildLienSimpleTest >> testBindingClassBLAbstractLienSimple [
		
	self
		assert:  (self famixModel allModelClasses detect: [ :class |  class name = '_Anonymous(BLAbstractLienSimple)' ]) fastDeclaration anyOne
		equals: ((self fastModel allWithType: FASTJavaNewClassExpression) detect: [ :variableExpression | variableExpression type fullName = 'BLAbstractLienSimple' ])
]

{ #category : #tests }
CRFBindingBuildLienSimpleTest >> testBindingVariableRel [
	self
		assert: ((self fastModel allWithType: FASTJavaVariableExpression) select: [ :variableExpression | variableExpression name = 'rel' ]) anyOne famixVariable
		equals: (self famixModel allAttributes select: [ :attribute | attribute name = 'rel' ]) anyOne.
		
	self
		assert:  (self famixModel allAttributes select: [ :attribute | attribute name = 'rel' ]) anyOne fastAccesses anyOne
		equals: ((self fastModel allWithType: FASTJavaVariableExpression) select: [ :variableExpression | variableExpression name = 'rel' ]) anyOne
]

{ #category : #tests }
CRFBindingBuildLienSimpleTest >> testBindingVariableRelDeclaration [
		
	self
		assert:  (self famixModel allAttributes select: [ :attribute | attribute name = 'rel' ]) anyOne fastDeclaration anyOne
		equals: ((self fastModel allWithType: FASTJavaVariableExpression) select: [ :variableExpression | variableExpression name = 'rel' ]) anyOne parentNode
]
