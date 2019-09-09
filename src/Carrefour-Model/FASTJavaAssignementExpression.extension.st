Extension { #name : #FASTJavaAssignementExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaAssignementExpression >> famixVariable [
	"Relation named: #famixVariable type: #FASTJavaStructuralEntity opposite: #fastAssignement"

	<generated>
	<MSEProperty: #famixVariable type: #Object>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaAssignementExpression >> famixVariable: anObject [

	<generated>
	self privateState attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAssignement from: self famixVariable to: anObject).
]
