Extension { #name : #FAMIXMethod }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXMethod >> fast [
	"Relation named: #fast type: #FASTEntity opposite: #famix"

	<generated>
	<FMProperty: #fast type: #FASTEntity opposite: #famix>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXMethod >> fast: anObject [

	<generated>
	(self privateState attributeAt: #fast ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self fast.
		self privateState attributeAt: #fast put: anObject.
		otherSide famix: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #fast put: anObject.
		anObject famix: self ]
]
