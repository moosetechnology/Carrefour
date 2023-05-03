Extension { #name : #FamixJavaInterface }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixJavaInterface >> bindFastModel: fastModel usingBinder: binder [
	binder bindFastModel: fastModel fromFamixClassEntity: self
]
