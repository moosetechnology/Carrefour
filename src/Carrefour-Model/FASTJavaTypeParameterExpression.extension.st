Extension { #name : #FASTJavaTypeParameterExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaTypeParameterExpression >> famixTypeDefinition [
	"Relation named: #famixTypeDefinition type: #FamixTType opposite: #fastTypeDefinition"

	<generated>
	<derived>
	<FMProperty: #famixTypeDefinition type: #FamixTType opposite: #fastTypeDefinition>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixTypeDefinition ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaTypeParameterExpression >> famixTypeDefinition: anObject [

	<generated>
	(self attributeAt: #famixTypeDefinition ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self famixTypeDefinition.
		self attributeAt: #famixTypeDefinition put: anObject.
		otherSide fastTypeDefinition: nil ]
	ifNotNil: [ 
		self attributeAt: #famixTypeDefinition put: anObject.
		anObject fastTypeDefinition: self ]
]
