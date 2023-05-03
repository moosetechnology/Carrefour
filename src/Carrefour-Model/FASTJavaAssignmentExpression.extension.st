Extension { #name : #FASTJavaAssignmentExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaAssignmentExpression >> famixVariable [
	"Relation named: #famixVariable type: #FamixTStructuralEntity opposite: #fastAssignment"

	<generated>
	<FMProperty: #famixVariable type: #FamixTStructuralEntity opposite: #fastAssignment>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTJavaAssignmentExpression >> famixVariable: anObject [

	<generated>
	self attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAssignment from: self famixVariable to: anObject).
]
