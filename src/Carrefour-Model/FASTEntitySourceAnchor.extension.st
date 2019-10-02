Extension { #name : #FASTEntitySourceAnchor }

{ #category : #'*Carrefour-Model-accessing' }
FASTEntitySourceAnchor >> famix [
	"Relation named: #famix type: #FAMIXMethod opposite: #fast"

	<generated>
	<derived>
	<MSEProperty: #famix type: #FAMIXMethod opposite: #fast>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famix ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTEntitySourceAnchor >> famix: anObject [

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
