Extension { #name : #FASTEntity }

{ #category : #'*Carrefour-Model-accessing' }
FASTEntity >> famix [
	"Relation named: #famix type: #FAMIXMethod opposite: #fast"

	<generated>
	<derived>
	<FMProperty: #famix type: #FAMIXMethod opposite: #fast>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famix ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTEntity >> famix: anObject [

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
