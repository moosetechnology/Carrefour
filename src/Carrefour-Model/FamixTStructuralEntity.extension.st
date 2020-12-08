Extension { #name : #FamixTStructuralEntity }

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAccesses [
	"Relation named: #fastAccesses type: #FASTExpression opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastAccesses type: #FASTExpression opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastAccesses ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAccesses: anObject [

	<generated>
	self fastAccesses value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAssignement [
	"Relation named: #fastAssignement type: #FASTJavaAssignementExpression opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastAssignement type: #FASTJavaAssignementExpression opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastAssignement ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAssignement: anObject [

	<generated>
	self fastAssignement value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastDeclaration [
	"Relation named: #fastDeclaration type: #FASTJavaVariableDeclarator opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastDeclaration type: #FASTJavaVariableDeclarator opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastDeclaration ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastDeclaration: anObject [

	<generated>
	self fastDeclaration value: anObject
]
