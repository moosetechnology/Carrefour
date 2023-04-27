Extension { #name : #FamixTStructuralEntity }

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAccesses [
	"Relation named: #fastAccesses type: #FASTTExpression opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastAccesses type: #FASTTExpression opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastAccesses ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAccesses: anObject [

	<generated>
	self fastAccesses value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAssignment [
	"Relation named: #fastAssignment type: #FASTJavaAssignmentExpression opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastAssignment type: #FASTJavaAssignmentExpression opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastAssignment ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTStructuralEntity >> fastAssignment: anObject [

	<generated>
	self fastAssignment value: anObject
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
