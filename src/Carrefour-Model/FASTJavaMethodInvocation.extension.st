Extension { #name : #FASTJavaMethodInvocation }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaMethodInvocation >> famix [

	<generated>
	<MSEProperty: #famix type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famix ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaMethodInvocation >> famix: anObject [

	<generated>
	(self privateState attributeAt: #famix ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	self privateState attributeAt: #famix put: anObject.
	anObject fast: self
]
