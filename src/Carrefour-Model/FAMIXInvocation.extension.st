Extension { #name : #FAMIXInvocation }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXInvocation >> fast [
	"Relation named: #fast type: #FASTExpression opposite: #famix"

	<generated>
	<FMProperty: #fast type: #FASTExpression opposite: #famix>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXInvocation >> fast: anObject [
	<generated>
	(self attributeAt: #fast ifAbsentPut: [ nil ]) == anObject
		ifTrue: [ ^ anObject ].
	anObject
		ifNil: [ | otherSide |
			otherSide := self fast.
			self privateState attributeAt: #fast put: anObject.
			otherSide famix: nil ]
		ifNotNil: [ self attributeAt: #fast put: anObject.
			anObject famix: self ]
]
