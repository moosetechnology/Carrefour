Extension { #name : #FamixTMethod }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> bindFastModel: fastModel usingBinder: binder [
	binder bindFastModel: fastModel fromFamixMethodEntity: self
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> generateFastAndBind [
	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self generateFastJava
		metamodel: CRFModel metamodel;
		yourself.
	self bindFastModel: fastModel usingBinder: CRFBinderVisitor new.
	^ fastModel
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> generateFastIfNotDoneAndBind [
	self fast ifNotNil: [ ^ self fast mooseModel ].
	^ self generateFastAndBind 
]
