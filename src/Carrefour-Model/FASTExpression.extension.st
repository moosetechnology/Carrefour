Extension { #name : #FASTExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTExpression >> famix [
	"Relation named: #famix type: #FAMIXInvocation opposite: #fast"

	<generated>
	<derived>
	<MSEProperty: #famix type: #FAMIXInvocation opposite: #fast>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famix ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTExpression >> famix: anObject [

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

{ #category : #'*Carrefour-Model-accessing' }
FASTExpression >> famixVariable [
	"Relation named: #famixVariable type: #FAMIXStructuralEntity opposite: #fastAccesses"

	<generated>
	<MSEProperty: #famixVariable type: #FAMIXStructuralEntity opposite: #fastAccesses>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTExpression >> famixVariable: anObject [

	<generated>
	self privateState attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAccesses from: self famixVariable to: anObject).
]
