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

	| onClickMethod |
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new 
		              parseCodeMethodString:
			              self fastMethodExternalIdentifierMethod)
		             name: #fastModel;
		             yourself.
	onClickMethod := ((self famixModel allMethods select: [ :method | 
		                   method name = 'onClick' ]) sort: [ 
		                  :method1 
		                  :method2 | 
		                  method1 sourceAnchor startPos
		                  < method2 sourceAnchor startPos ]) last.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity: onClickMethod
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
