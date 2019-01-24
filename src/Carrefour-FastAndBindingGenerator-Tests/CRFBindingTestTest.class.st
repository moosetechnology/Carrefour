Class {
	#name : #CRFBindingTestTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingTestTest >> setUp [
	super setUp.
	fastModel := (MooseModel importFromMSEStream: (ReadStream on: self fastMethodTestString))
		name: #fastModel;
		yourself
]
