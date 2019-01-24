Extension { #name : #FASTJavaIdentifier }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaIdentifier >> famixVariable [

	<generated>
	<MSEProperty: #famixVariable type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaIdentifier >> famixVariable: anObject [

	<generated>
	self privateState attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAccesses from: self famixVariable to: anObject).
]
