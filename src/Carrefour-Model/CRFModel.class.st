"
MetaModel of Carrefour.
Does not define any entity, but ""imports"" entities from Famix and FAST and add relations between them
"
Class {
	#name : #CRFModel,
	#superclass : #MooseModel,
	#category : #'Carrefour-Model-Model'
}

{ #category : #accessing }
CRFModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'Famix-Java-Entities' #'FAST-Java-Model' #'FAST-Core-Model')
]

{ #category : #meta }
CRFModel class >> annotation [
	<FMClass: #CRFModel super: #MooseModel>
	<package: #'Carrefour-Model'>
	<generated>
]
