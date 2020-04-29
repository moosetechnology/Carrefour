Extension { #name : #FASTEntity }

{ #category : #'*Carrefour-RemoveBinding' }
FASTEntity >> fullClean [
	CRFBindingCleaner new fullClean: self
]

{ #category : #'*Carrefour-RemoveBinding' }
FASTEntity >> removeBinding [
	CRFBindingCleaner new accept: self
]
