Class {
	#name : #CRFMooseModel,
	#superclass : #MooseModel,
	#category : #'Carrefour-Model'
}

{ #category : #initialization }
CRFMooseModel >> initialize [
		<generated>
		super initialize.
		self metamodel: (self class environment at: #CRFMetamodelGenerator) metamodel
]
