Extension { #name : #FASTVariableExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTVariableExpression >> famixVariable [
	"Relation named: #famixVariable type: #FAMIXType opposite: #fastAccesses"

	<generated>
	<FMProperty: #famixVariable type: #FAMIXType opposite: #fastAccesses>
	<package: #'Carrefour-Model'>
	^ self privateState attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTVariableExpression >> famixVariable: anObject [

	<generated>
	self privateState attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAccesses from: self famixVariable to: anObject).
]
