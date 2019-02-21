Extension { #name : #FAMIXInvocation }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXInvocation >> fast [

	<generated>
	<MSEProperty: #fast type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXInvocation >> fast: anObject [

	<generated>
	"self haltIf: [ anObject parentNode variable name = 'j' ]."
	(self privateState attributeAt: #fast ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #fast put: anObject.
	anObject famix: self
]
