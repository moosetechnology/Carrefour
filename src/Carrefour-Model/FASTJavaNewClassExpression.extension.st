Extension { #name : #FASTJavaNewClassExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaNewClassExpression >> famixType [
	"Relation named: #famixType type: #FamixTType opposite: #fastDeclaration"

	<generated>
	<FMProperty: #famixType type: #FamixTType opposite: #fastDeclaration>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixType ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaNewClassExpression >> famixType: anObject [

	<generated>
	self attributeAt: #famixType put: (FMMultivalueLink on: self update: #fastDeclaration from: self famixType to: anObject).
]
