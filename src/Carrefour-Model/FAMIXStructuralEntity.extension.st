Extension { #name : #FAMIXStructuralEntity }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastAccesses [
	"Relation named: #fastAccesses type: #FASTExpression opposite: #famixVariable"

	<generated>
	<derived>
	<MSEProperty: #fastAccesses type: #FASTExpression opposite: #famixVariable>
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
	"Relation named: #fastAssignement type: #FASTJavaAssignementExpression opposite: #famixVariable"

	<generated>
	<derived>
	<MSEProperty: #fastAssignement type: #FASTJavaAssignementExpression opposite: #famixVariable>
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
	"Relation named: #fastDeclaration type: #FASTJavaVariableDeclarator opposite: #famixVariable"

	<generated>
	<derived>
	<MSEProperty: #fastDeclaration type: #FASTJavaVariableDeclarator opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #fastDeclaration ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXStructuralEntity >> fastDeclaration: anObject [

	<generated>
	self fastDeclaration value: anObject
]
