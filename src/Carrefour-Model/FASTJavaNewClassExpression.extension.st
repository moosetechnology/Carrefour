Extension { #name : #FASTJavaNewClassExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaNewClassExpression >> famixType [
	"Relation named: #famixType type: #FAMIXType opposite: #fastDeclaration"

	<generated>
	<FMProperty: #famixType type: #FAMIXType opposite: #fastDeclaration>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famixType ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaNewClassExpression >> famixType: anObject [

	<generated>
	self privateState attributeAt: #famixType put: (FMMultivalueLink on: self update: #fastDeclaration from: self famixType to: anObject).
]
