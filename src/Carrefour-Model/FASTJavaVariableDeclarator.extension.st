Extension { #name : #FASTJavaVariableDeclarator }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaVariableDeclarator >> famixVariable [

	<generated>
	<MSEProperty: #famixVariable type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaVariableDeclarator >> famixVariable: anObject [

	<generated>
	self privateState attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastDeclaration from: self famixVariable to: anObject).
]
