Extension { #name : #FAMIXType }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXType >> fastAccesses [

	<generated>
	<MSEProperty: #fastAccesses type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fastAccesses ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXType >> fastAccesses: anObject [

	<generated>
	self fastAccesses value: anObject
]
