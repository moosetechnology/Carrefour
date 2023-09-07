Class {
	#name : #CRFJavaMethodBinderVisitor,
	#superclass : #CRFBinderVisitor,
	#category : #'Carrefour-FastAndBindingGenerator'
}

{ #category : #api }
CRFJavaMethodBinderVisitor >> bindFastModel: fastModel toFamixEntity: aFamixMethodEntity [

	self
		execute: [ self sourceFamixEntity: aFamixMethodEntity.
			fastModel allFASTJavaMethodEntity
				select: [ :methodEntity | methodEntity parentNode isNil ]
				thenDo: [ :methodEntity | self accept: methodEntity ].
			(fastModel allWithType: FASTJavaInitializer) do: [ :methodEntity | self accept: methodEntity ].
			fastModel metamodel: CRFModel metamodel ]
		recordedAs: 'Bind ' , aFamixMethodEntity mooseName printString
]
