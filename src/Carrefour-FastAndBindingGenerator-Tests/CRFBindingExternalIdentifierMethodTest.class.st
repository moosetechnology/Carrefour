"
If I parse the inner class
"
Class {
	#name : #CRFBindingExternalIdentifierMethodTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingExternalIdentifierMethodTest >> setUp [

	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new 
		              parseCodeMethodString:
			              self fastMethodExternalIdentifierMethod)
		             name: #fastModel;
		             yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			((self famixModel allModelMethods detect: [ :method | 
				  method name = 'externalIdentifierMethod' ]) clientBehaviours 
				 detect: [ :client | client name = 'onClick' ])
]

{ #category : #running }
CRFBindingExternalIdentifierMethodTest >> testIdentifier [
	self assert: (self fastModel allWithType: FASTJavaIdentifier) size equals: 2
]

{ #category : #running }
CRFBindingExternalIdentifierMethodTest >> testIdentifierDB [

	self
		assert:
			((self fastModel allWithType: FASTJavaIdentifier) detect: [ :ide | 
				 ide name = 'db' ]) famixVariable
		equals:
		(self famixModel allLocalVariables detect: [ :var | var name = 'db' ])
]

{ #category : #running }
CRFBindingExternalIdentifierMethodTest >> testIdentifierExternalIdentifier [

	self
		assert:
			((self fastModel allWithType: FASTJavaIdentifier) detect: [ :ide | 
				 ide name = 'externalIdentifier' ]) famixVariable
		equals:
		(self famixModel allLocalVariables detect: [ :var | var name = 'externalIdentifier' ])
]

{ #category : #running }
CRFBindingExternalIdentifierMethodTest >> testNumberIdentifier [
	self assert: (self fastModel allWithType: FASTJavaIdentifier) size equals: 2
]
