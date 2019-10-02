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
		'fastJavaVariableDeclarator',
		'fastJavaClassProperty',
		'famixType',
		'fastJavaIdentifier',
		'fastJavaNewClassExpression',
		'fastJavaFieldAccess',
		'fastJavaNew',
		'fastJavaInitializer',
		'fastVariableExpression',
		'fastExpression',
		'fastEntitySourceAnchor'
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
	^ {FASTMetamodelGenerator.
	FASTJavaMetamodelGenerator.
	FamixCompatibilityGenerator}
]

{ #category : #definition }
CRFMetamodelGenerator >> defineClasses [
	super defineClasses.
	famixMethod := self remoteEntity: #Method withPrefix: #FAMIX.
	fastJavaMethodEntity := self remoteEntity: #MethodEntity withPrefix: #FASTJava.
	famixInvocation := self remoteEntity: #Invocation withPrefix: #FAMIX.
	fastJavaMethodInvocation := self remoteEntity: #MethodInvocation withPrefix: #FASTJava.
	fastJavaNew := self remoteEntity: #NewExpression withPrefix: #FASTJava.
	famixStructuralEntity := self remoteEntity: #StructuralEntity withPrefix: #FAMIX.
	fastJavaAssignementExpression := self remoteEntity: #AssignementExpression withPrefix: #FASTJava.
	fastJavaVariableDeclarator := self remoteEntity: #VariableDeclarator withPrefix: #FASTJava.
	fastJavaClassProperty := self remoteEntity: #ClassProperty withPrefix: #FASTJava.
	fastJavaIdentifier := self remoteEntity: #Identifier withPrefix: #FASTJava.
	famixType := self remoteEntity: #Type withPrefix: #FAMIX.
	fastJavaNewClassExpression := self remoteEntity: #NewClassExpression withPrefix: #FASTJava.
	fastJavaFieldAccess := self remoteEntity: #FieldAccess withPrefix: #FASTJava.
	fastJavaInitializer := self remoteEntity: #Initializer withPrefix: #FASTJava.
	
	fastVariableExpression := self remoteEntity: #VariableExpression withPrefix: #FAST.
	fastExpression := self remoteEntity: #Expression withPrefix: #FAST.
	fastEntitySourceAnchor := self remoteEntity: #EntitySourceAnchor withPrefix: #FAST.
	
]

{ #category : #definition }
CRFMetamodelGenerator >> defineHierarchy [
	super defineHierarchy
]

{ #category : #definition }
CRFMetamodelGenerator >> defineRelations [
	super defineRelations.
	(famixInvocation property: #fast) - (fastExpression property: #famix).
	(famixMethod property: #fast) - (fastEntitySourceAnchor property: #famix).
	(famixStructuralEntity property: #fastAssignement) -* (fastJavaAssignementExpression property: #famixVariable).
	(famixStructuralEntity property: #fastDeclaration) -* (fastJavaVariableDeclarator property: #famixVariable).
	
	(famixStructuralEntity property: #fastAccesses) -* (fastExpression property: #famixVariable).
	(famixType property: #fastAccesses) -* (fastVariableExpression property: #famixVariable).
	(famixType property: #fastDeclaration) -* (fastJavaNewClassExpression property: #famixType)
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
