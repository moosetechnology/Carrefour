Extension { #name : #FAMIXMethod }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXMethod >> fast [
	"Relation named: #fast type: #FASTEntity opposite: #famix"

	<generated>
	<FMProperty: #fast type: #FASTEntity opposite: #famix>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXMethod >> fast: anObject [

	<generated>
	(self attributeAt: #fast ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self fast.
		self attributeAt: #fast put: anObject.
		otherSide famix: nil ]
	ifNotNil: [ 
		self attributeAt: #fast put: anObject.
		anObject famix: self ]
]
