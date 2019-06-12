Extension { #name : #FASTJavaNewExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaNewExpression >> famix [

	<generated>
	<MSEProperty: #famix type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famix ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaNewExpression >> famix: anObject [

	<generated>
	(self privateState attributeAt: #famix ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self famix.
		self privateState attributeAt: #famix put: anObject.
		otherSide fast: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #famix put: anObject.
		anObject fast: self ]
]
