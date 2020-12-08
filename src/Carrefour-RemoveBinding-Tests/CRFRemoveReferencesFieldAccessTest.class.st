Class {
	#name : #CRFRemoveReferencesFieldAccessTest,
	#superclass : #CRFRemoveBindingTest,
	#category : #'Carrefour-RemoveBinding-Tests'
}

{ #category : #running }
CRFRemoveReferencesFieldAccessTest >> fastTestMethod [
	^ (self fastModel allFASTJavaMethodEntity select: [ :method | method name = 'fieldAccess' ]) first
]

{ #category : #running }
CRFRemoveReferencesFieldAccessTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodFieldAccess)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: (self famixModel allModelMethods detect: [ :method | method name = 'fieldAccess' ])
]

{ #category : #running }
CRFRemoveReferencesFieldAccessTest >> testFromFASTRemoveFieldAccessBinding [
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) collect: #famixVariable) isNotEmpty.
	self fastTestMethod removeBinding.
	self assert: ((self fastModel allWithType: FASTJavaFieldAccess) collect: #famixVariable thenReject: #isNil ) isEmpty
]
