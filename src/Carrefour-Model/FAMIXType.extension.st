Extension { #name : #FAMIXType }

{ #category : #'*Carrefour-Model-accessing' }
FAMIXType >> fastAccesses [
	"Relation named: #fastAccesses type: #FASTVariableExpression opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastAccesses type: #FASTVariableExpression opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastAccesses ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXType >> fastAccesses: anObject [

	<generated>
	self fastAccesses value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXType >> fastDeclaration [
	"Relation named: #fastDeclaration type: #FASTJavaNewClassExpression opposite: #famixType"

	<generated>
	<derived>
	<FMProperty: #fastDeclaration type: #FASTJavaNewClassExpression opposite: #famixType>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastDeclaration ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixType: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FAMIXType >> fastDeclaration: anObject [

	<generated>
	self fastDeclaration value: anObject
]
