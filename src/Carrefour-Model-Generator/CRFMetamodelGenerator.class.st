Class {
	#name : #CRFMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'famixInvocation',
		'javaMethodInvocation',
		'fastJavaMethodInvocation',
		'famixMethod',
		'fastJavaMethodEntity',
		'famixStructuralEntity',
		'fastJavaAssignementExpression',
		'fastJavaVariableDeclarator'
	],
	#category : #'Carrefour-Model-Generator'
}

{ #category : #accessing }
CRFMetamodelGenerator class >> modifyMetamodel: aMetamodel [
	super modifyMetamodel: aMetamodel.
	self fixRemoteMetamodelRelationsIn: aMetamodel
]

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
	^ {FASTJavaMetamodelGenerator.
	FamixCompatibilityGenerator}
]

{ #category : #definition }
CRFMetamodelGenerator >> defineClasses [
	super defineClasses.
	famixMethod := self remoteEntity: #Method withPrefix: #FAMIX.
	fastJavaMethodEntity := self remoteEntity: #JavaMethodEntity withPrefix: #FAST.
	famixInvocation := self remoteEntity: #Invocation withPrefix: #FAMIX.
	fastJavaMethodInvocation := self remoteEntity: #JavaMethodInvocation withPrefix: #FAST.
	famixStructuralEntity := self remoteEntity: #StructuralEntity withPrefix: #FAMIX.
	fastJavaAssignementExpression := self remoteEntity: #JavaAssignementExpression withPrefix: #FAST.
	fastJavaVariableDeclarator := self remoteEntity: #JavaVariableDeclarator withPrefix: #FAST.
]

{ #category : #definition }
CRFMetamodelGenerator >> defineHierarchy [
	super defineHierarchy
]

{ #category : #definition }
CRFMetamodelGenerator >> defineRelations [
	super defineRelations.
	(famixInvocation property: #fast) - (fastJavaMethodInvocation property: #famix).
	(famixMethod property: #fast) - (fastJavaMethodEntity property: #famix).
	(famixStructuralEntity property: #fastAssignement) -* (fastJavaAssignementExpression property: #famixVariable).
	(famixStructuralEntity property: #fastDeclaration) -* (fastJavaVariableDeclarator property: #famixVariable)
]

{ #category : #definition }
CRFMetamodelGenerator >> newBuilder [
	| mqBuilder |
	mqBuilder := FamixMooseQueryGenerator builderWithDefinitions.
	self adoptBuilder: mqBuilder.
	^ mqBuilder
		doNotGenerateCurrent;
		generator: self;
		yourself
]