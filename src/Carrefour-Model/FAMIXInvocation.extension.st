Extension { #name : #FAMIXInvocation }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXInvocation >> fast [
	"Relation named: #fast type: #FAMIXMethodInvocation opposite: #famix"

	<generated>
	<MSEProperty: #fast type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXInvocation >> fast: anObject [

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
