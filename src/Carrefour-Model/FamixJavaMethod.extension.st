Extension { #name : #FamixJavaMethod }

{ #category : #'*Carrefour-Model-accessing' }
FamixJavaMethod >> fast [
	"Relation named: #fast type: #FASTTEntity opposite: #famixMethod"

	<generated>
	<FMProperty: #fast type: #FASTTEntity opposite: #famixMethod>
	<package: #'Carrefour-Model'>
	^ self attributeAt: #fast ifAbsent: [ nil ]
]

{ #category : #'*Carrefour-Model-accessing' }
FamixJavaMethod >> fast: anObject [

	<generated>
	(self attributeAt: #fast ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self fast.
		self attributeAt: #fast put: anObject.
		otherSide famixMethod: nil ]
	ifNotNil: [ 
		self attributeAt: #fast put: anObject.
		anObject famixMethod: self ]
]
