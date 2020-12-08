Extension { #name : #FASTEntity }

{ #category : #'*Carrefour-Model-accessing' }
FASTEntity >> famix [
	"Relation named: #famix type: #FamixJavaMethod opposite: #fast"

	<generated>
	<derived>
	<FMProperty: #famix type: #FamixJavaMethod opposite: #fast>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famix ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTEntity >> famix: anObject [

	<generated>
	(self attributeAt: #famix ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self famix.
		self attributeAt: #famix put: anObject.
		otherSide fast: nil ]
	ifNotNil: [ 
		self attributeAt: #famix put: anObject.
		anObject fast: self ]
]
