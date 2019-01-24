Extension { #name : #FAMIXStructuralEntity }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastAccesses [

	<generated>
	<MSEProperty: #fastAccesses type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fastAccesses ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastAccesses: anObject [

	<generated>
	self fastAccesses value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastAssignement [

	<generated>
	<MSEProperty: #fastAssignement type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fastAssignement ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastAssignement: anObject [

	<generated>
	self fastAssignement value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastDeclaration [

	<generated>
	<MSEProperty: #fastDeclaration type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fastDeclaration ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastDeclaration: anObject [

	<generated>
	self fastDeclaration value: anObject
]
