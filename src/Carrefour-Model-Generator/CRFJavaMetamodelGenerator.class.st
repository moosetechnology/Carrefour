Class {
	#name : #CRFJavaMetamodelGenerator,
	#superclass : #CRFMetamodelGenerator,
	#instVars : [
		'fastJavaVariableDeclarator',
		'fastJavaNewClassExpression',
		'fastJavaClassDeclaration',
		'fastJavaInterfaceDeclaration',
		'fastJavaTypeParameter',
		'fastJavaAssignmentExpression'
	],
	#category : #'Carrefour-Model-Generator'
}

{ #category : #accessing }
CRFJavaMetamodelGenerator class >> packageName [
	<ignoreForCoverage>
	^ 'Carrefour-Java-Model'
]

{ #category : #accessing }
CRFJavaMetamodelGenerator class >> submetamodels [
	^super submetamodels , {	FASTJavaMetamodelGenerator . FamixJavaGenerator }
]

{ #category : #definition }
CRFJavaMetamodelGenerator >> defineClasses [
	super defineClasses.

	famixMethod := self remoteEntity: #Method withPrefix: #FamixJava.
	famixInvocation := self remoteEntity: #Invocation withPrefix: #FamixJava.

	fastJavaAssignmentExpression := self remoteEntity: #AssignmentExpression withPrefix: #FASTJava.
	fastJavaVariableDeclarator := self remoteEntity: #VariableDeclarator withPrefix: #FASTJava.
	fastJavaTypeParameter := self remoteEntity: #TypeParameterExpression withPrefix: #FASTJava.
	fastJavaNewClassExpression := self remoteEntity: #NewClassExpression withPrefix: #FASTJava.
	fastJavaClassDeclaration := self remoteEntity: #ClassDeclaration withPrefix: #FASTJava.
	fastJavaInterfaceDeclaration := self remoteEntity: #InterfaceDeclaration withPrefix: #FASTJava.

]

{ #category : #definition }
CRFJavaMetamodelGenerator >> defineRelations [
	super defineRelations.

	(famixStructuralEntity property: #fastAssignment) -* (fastJavaAssignmentExpression property: #famixVariable).
	(famixStructuralEntity property: #fastDeclaration) -* (fastJavaVariableDeclarator property: #famixVariable).

	(famixType property: #fastDeclaration) -* (fastJavaNewClassExpression property: #famixType).
	(famixType property: #fastTypeDefinition) - (fastJavaClassDeclaration property: #famixTypeDefinition).
	(famixType property: #fastTypeDefinition) - (fastJavaInterfaceDeclaration property: #famixTypeDefinition).
	(famixType property: #fastTypeDefinition) - (fastJavaTypeParameter property: #famixTypeDefinition)
	
]
