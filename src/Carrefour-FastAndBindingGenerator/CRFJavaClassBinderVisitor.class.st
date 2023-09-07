Class {
	#name : #CRFJavaClassBinderVisitor,
	#superclass : #CRFBinderVisitor,
	#category : #'Carrefour-FastAndBindingGenerator'
}

{ #category : #api }
CRFJavaClassBinderVisitor >> bindFastModel: fastModel toFamixEntity: aFamixClassEntity [
	self
		execute: [ self sourceFamixEntity: aFamixClassEntity.
			(fastModel allWithSubTypesOfAny: {FASTJavaClassDeclaration. FASTJavaInterfaceDeclaration}) asOrderedCollection
				select: [ :classDeclaration | classDeclaration parentNode isNil ]
				thenDo: [ :classDeclaration | self accept: classDeclaration ].
			fastModel metamodel: CRFModel metamodel ]
		recordedAs: 'Bind ' , aFamixClassEntity mooseName printString
]
