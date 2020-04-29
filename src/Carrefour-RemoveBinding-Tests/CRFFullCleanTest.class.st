"
This class contains tests
"
Class {
	#name : #CRFFullCleanTest,
	#superclass : #CRFRemoveBindingTest,
	#category : #'Carrefour-RemoveBinding-Tests'
}

{ #category : #running }
CRFFullCleanTest >> famixTestMethod [
	^ (self famixModel allMethods select: [ :method | method name = 'test' ]) first
]

{ #category : #running }
CRFFullCleanTest >> fastTestMethod [
	^ (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'test' ]) first
]

{ #category : #running }
CRFFullCleanTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self fastMethodTestString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor bindFastModel: self fastModel fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'test' ]) first.
]

{ #category : #running }
CRFFullCleanTest >> testFullClean [
	| mooseModel |
	mooseModel := self fastTestMethod mooseModel.
	self fastTestMethod fullClean.
	self assert: mooseModel isEmpty.
]
