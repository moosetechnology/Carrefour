Class {
	#name : #CRFFortranMetamodelGenerator,
	#superclass : #CRFMetamodelGenerator,
	#category : #'Carrefour-Model-Generator'
}

{ #category : #accessing }
CRFFortranMetamodelGenerator class >> packageName [
	<ignoreForCoverage>
	^ 'Carrefour-Fortran-Model'
]

{ #category : #accessing }
CRFFortranMetamodelGenerator class >> submetamodels [
	^super submetamodels , {	FASTFortranModelGenerator . FamixJavaGenerator }
]
