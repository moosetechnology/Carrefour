Extension { #name : #FamixTMethod }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> bindFastModel: fastModel usingBinder: binder [
	binder bindFastModel: fastModel fromFamixMethodEntity: self
]
