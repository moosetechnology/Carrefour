Extension { #name : #FAMIXMethod }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXMethod >> fast [

	<generated>
	<MSEProperty: #fast type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXMethod >> fast: anObject [

	<generated>
	(self privateState attributeAt: #fast ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #fast put: anObject.
	anObject famix: self
]
