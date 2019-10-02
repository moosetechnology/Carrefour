Class {
	#name : #CRFModel,
	#superclass : #MooseModel,
	#category : #'Carrefour-Model'
}

{ #category : #meta }
CRFModel class >> annotation [
	<MSEClass: #CRFModel super: #MooseModel>
	<package: #'Carrefour-Model'>
	<generated>
]

{ #category : #initialization }
CRFModel >> initialize [
	<generated>
	super initialize.
	self metamodel: (self class environment at: #CRFMetamodelGenerator) metamodel
]
