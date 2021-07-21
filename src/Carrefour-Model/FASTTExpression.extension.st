Extension { #name : #FASTTExpression }

{ #category : #'*Carrefour-Model-accessing' }
FASTTExpression >> famixInvocation [
	"Relation named: #famixInvocation type: #FamixJavaInvocation opposite: #fast"

	<generated>
	<derived>
	<FMProperty: #famixInvocation type: #FamixJavaInvocation opposite: #fast>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixInvocation ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTTExpression >> famixInvocation: anObject [

	<generated>
	(self attributeAt: #famixInvocation ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self famixInvocation.
		self attributeAt: #famixInvocation put: anObject.
		otherSide fast: nil ]
	ifNotNil: [ 
		self attributeAt: #famixInvocation put: anObject.
		anObject fast: self ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTTExpression >> famixVariable [
	"Relation named: #famixVariable type: #FamixTStructuralEntity opposite: #fastAccesses"

	<generated>
	<FMProperty: #famixVariable type: #FamixTStructuralEntity opposite: #fastAccesses>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #famixVariable ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FASTTExpression >> famixVariable: anObject [

	<generated>
	self attributeAt: #famixVariable put: (FMMultivalueLink on: self update: #fastAccesses from: self famixVariable to: anObject).
]
