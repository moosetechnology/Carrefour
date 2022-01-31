Extension { #name : #FamixTType }

{ #category : #'*Carrefour-Model-accessing' }
FamixTType >> fastAccesses [
	"Relation named: #fastAccesses type: #FASTTVariableExpression opposite: #famixVariable"

	<generated>
	<derived>
	<FMProperty: #fastAccesses type: #FASTTVariableExpression opposite: #famixVariable>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastAccesses ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixVariable: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTType >> fastAccesses: anObject [

	<generated>
	self fastAccesses value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTType >> fastDeclaration [
	"Relation named: #fastDeclaration type: #FASTJavaNewClassExpression opposite: #famixType"

	<generated>
	<derived>
	<FMProperty: #fastDeclaration type: #FASTJavaNewClassExpression opposite: #famixType>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastDeclaration ifAbsentPut: [ FMMultivalueLink on: self opposite: #famixType: ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTType >> fastDeclaration: anObject [

	<generated>
	self fastDeclaration value: anObject
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTType >> fastTypeDefinition [
	"Relation named: #fastTypeDefinition type: #FASTJavaClassDeclaration opposite: #famixTypeDefinition"

	<generated>
	<FMProperty: #fastTypeDefinition type: #FASTJavaClassDeclaration opposite: #famixTypeDefinition>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fastTypeDefinition ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixTType >> fastTypeDefinition: anObject [

	<generated>
	(self attributeAt: #fastTypeDefinition ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self fastTypeDefinition.
		self attributeAt: #fastTypeDefinition put: anObject.
		otherSide famixTypeDefinition: nil ]
	ifNotNil: [ 
		self attributeAt: #fastTypeDefinition put: anObject.
		anObject famixTypeDefinition: self ]
]
