Extension { #name : #FASTTVariableExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTTVariableExpression >> famixVariable [
	"Relation named: #famixVariable type: #FamixTType opposite: #fastAccesses"

	<generated>
	<FMProperty: #famixVariable type: #FamixTType opposite: #fastAccesses>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTTVariableExpression >> famixVariable: anObject [

	<generated>
	self attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAccesses from: self famixVariable to: anObject).
]
