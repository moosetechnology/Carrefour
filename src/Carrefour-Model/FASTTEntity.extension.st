Extension { #name : #FASTTEntity }

{ #category : #'*Carrefour-Model-accessing' }
FASTTEntity >> famixMethod [
	"Relation named: #famixMethod type: #FamixJavaMethod opposite: #fast"

	<generated>
	<derived>
	<FMProperty: #famixMethod type: #FamixJavaMethod opposite: #fast>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixMethod ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTTEntity >> famixMethod: anObject [

	<generated>
	(self attributeAt: #famixMethod ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self famixMethod.
		self attributeAt: #famixMethod put: anObject.
		otherSide fast: nil ]
	ifNotNil: [ 
		self attributeAt: #famixMethod put: anObject.
		anObject fast: self ]
]
