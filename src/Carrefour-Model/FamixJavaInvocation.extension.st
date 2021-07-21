Extension { #name : #FamixJavaInvocation }

{ #category : #'*Carrefour-Model-accessing' }
FamixJavaInvocation >> fast [
	"Relation named: #fast type: #FASTTExpression opposite: #famixInvocation"

	<generated>
	<FMProperty: #fast type: #FASTTExpression opposite: #famixInvocation>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixJavaInvocation >> fast: anObject [

	<generated>
	(self attributeAt: #fast ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self fast.
		self attributeAt: #fast put: anObject.
		otherSide famixInvocation: nil ]
	ifNotNil: [ 
		self attributeAt: #fast put: anObject.
		anObject famixInvocation: self ]
]
