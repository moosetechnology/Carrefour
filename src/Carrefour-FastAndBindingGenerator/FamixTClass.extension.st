Extension { #name : #FamixTClass }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTClass >> bindFastModel: fastModel usingBinder: binder [
	binder bindFastModel: fastModel fromFamixClassEntity: self
]
