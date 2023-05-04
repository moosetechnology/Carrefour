Class {
	#name : #CRFMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'famixInvocation',
		'famixMethod',
		'famixStructuralEntity',
		'fastJavaVariableDeclarator',
		'famixType',
		'fastJavaNewClassExpression',
		'fastVariableExpression',
		'fastExpression',
		'fastEntity',
		'fastJavaClassDeclaration',
		'fastJavaInterfaceDeclaration',
		'fastJavaTypeParameter',
		'fastJavaAssignmentExpression'
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
	^ {FASTMetamodelGenerator.
	FASTJavaMetamodelGenerator.
	FamixJavaGenerator.
	FamixGenerator }
]

{ #category : #definition }
CRFMetamodelGenerator >> defineClasses [
	super defineClasses.
	famixMethod := self remoteEntity: #Method withPrefix: #FamixJava.
	famixInvocation := self remoteEntity: #Invocation withPrefix: #FamixJava.
	famixStructuralEntity := self remoteTrait: #TStructuralEntity withPrefix: #'Famix'.
	fastJavaAssignmentExpression := self remoteEntity: #AssignmentExpression withPrefix: #FASTJava.
	fastJavaVariableDeclarator := self remoteEntity: #VariableDeclarator withPrefix: #FASTJava.
	fastJavaTypeParameter := self remoteEntity: #TypeParameterExpression withPrefix: #FASTJava.
	famixType := self remoteTrait: #TType withPrefix: #'Famix'.
	fastJavaNewClassExpression := self remoteEntity: #NewClassExpression withPrefix: #FASTJava.
	fastJavaClassDeclaration := self remoteEntity: #ClassDeclaration withPrefix: #FASTJava.
	fastJavaInterfaceDeclaration := self remoteEntity: #InterfaceDeclaration withPrefix: #FASTJava.
	
	fastVariableExpression := self remoteTrait: #TVariableExpression withPrefix: #FAST.
	fastExpression := self remoteTrait: #TExpression withPrefix: #FAST.
	fastEntity := self remoteTrait: #TEntity withPrefix: #FAST.
]

{ #category : #definition }
CRFMetamodelGenerator >> defineHierarchy [
	super defineHierarchy
]

{ #category : #definition }
CRFMetamodelGenerator >> defineRelations [
	super defineRelations.
	(famixInvocation property: #fast) - (fastExpression property: #famixInvocation).
	(famixMethod property: #fast) - (fastEntity property: #famixMethod).
	(famixStructuralEntity property: #fastAssignment) -* (fastJavaAssignmentExpression property: #famixVariable).
	(famixStructuralEntity property: #fastDeclaration) -* (fastJavaVariableDeclarator property: #famixVariable).
	
	(famixStructuralEntity property: #fastAccesses) -* (fastExpression property: #famixVariable).
	(famixType property: #fastAccesses) -* (fastVariableExpression property: #famixVariable).
	(famixType property: #fastDeclaration) -* (fastJavaNewClassExpression property: #famixType).
	(famixType property: #fastTypeDefinition) - (fastJavaClassDeclaration property: #famixTypeDefinition).
	(famixType property: #fastTypeDefinition) - (fastJavaInterfaceDeclaration property: #famixTypeDefinition).
	(famixType property: #fastTypeDefinition) - (fastJavaTypeParameter property: #famixTypeDefinition)
	
]
