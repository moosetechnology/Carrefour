Extension { #name : #FASTEntity }

{ #category : #'*Carrefour-RemoveBinding' }
FASTEntity >> removeBinding [
	CRFBindingCleaner new accept: self
]
