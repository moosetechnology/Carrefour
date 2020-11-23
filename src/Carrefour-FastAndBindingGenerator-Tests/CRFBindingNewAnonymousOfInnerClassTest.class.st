Class {
	#name : #CRFBindingNewAnonymousOfInnerClassTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingNewAnonymousOfInnerClassTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self fastMethodNewAnonymousOfInnerClassString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor bindFastModel: self fastModel fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'newAnonymousOfInnerClass' ]) first
]

{ #category : #running }
CRFBindingNewAnonymousOfInnerClassTest >> testBindingClassCarrefour [
	self assert: (self fastModel allWithType: FASTJavaNewClassExpression) anyOne famixType equals: (self famixModel allModelClasses select: [ :class | class name = '_Anonymous(Carrefour.Oupsi)' ]) anyOne.
	self assert: (self famixModel allModelClasses select: [ :class | class name = '_Anonymous(Carrefour.Oupsi)' ]) anyOne fastDeclaration anyOne equals: (self fastModel allWithType: FASTJavaNewClassExpression) anyOne 
]
