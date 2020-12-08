Extension { #name : #FASTJavaVariableDeclarator }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaVariableDeclarator >> famixVariable [
	"Relation named: #famixVariable type: #FamixTStructuralEntity opposite: #fastDeclaration"

	<generated>
	<FMProperty: #famixVariable type: #FamixTStructuralEntity opposite: #fastDeclaration>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaVariableDeclarator >> famixVariable: anObject [

	<generated>
	self attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastDeclaration from: self famixVariable to: anObject).
]
