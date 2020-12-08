Extension { #name : #FASTJavaAssignementExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaAssignementExpression >> famixVariable [
	"Relation named: #famixVariable type: #FamixTStructuralEntity opposite: #fastAssignement"

	<generated>
	<FMProperty: #famixVariable type: #FamixTStructuralEntity opposite: #fastAssignement>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaAssignementExpression >> famixVariable: anObject [

	<generated>
	self attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAssignement from: self famixVariable to: anObject).
]
