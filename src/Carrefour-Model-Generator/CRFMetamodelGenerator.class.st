Class {
	#name : #CRFMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'famixInvocation',
		'famixMethod',
		'famixStructuralEntity',
		'famixType',
		'fastVariableExpression',
		'fastExpression',
		'fastEntity'
	],
	#category : #'Carrefour-Model-Generator'
}

{ #category : #accessing }
CRFMetamodelGenerator class >> packageName [
	<ignoreForCoverage>
	^ 'Carrefour-Model'
]

{ #category : #accessing }
CRFMetamodelGenerator class >> prefix [
	<ignoreForCoverage>
	^ #CRF
]

{ #category : #accessing }
CRFMetamodelGenerator class >> submetamodels [
	^ {FASTMetamodelGenerator .	FamixGenerator }
]

{ #category : #definition }
CRFMetamodelGenerator >> defineClasses [
	super defineClasses.

	famixStructuralEntity := self remoteTrait: #TStructuralEntity withPrefix: #Famix.
	famixType := self remoteTrait: #TType withPrefix: #Famix.

	fastVariableExpression := self remoteTrait: #TVariableExpression withPrefix: #FAST.
	fastExpression := self remoteTrait: #TExpression withPrefix: #FAST.
	fastEntity := self remoteTrait: #TEntity withPrefix: #FAST.
]

{ #category : #definition }
CRFMetamodelGenerator >> defineRelations [
	super defineRelations.
	(famixInvocation property: #fast) - (fastExpression property: #famixInvocation).
	(famixMethod property: #fast) - (fastEntity property: #famixMethod).
	
	(famixStructuralEntity property: #fastAccesses) -* (fastExpression property: #famixVariable).
	(famixType property: #fastAccesses) -* (fastVariableExpression property: #famixVariable).

]
