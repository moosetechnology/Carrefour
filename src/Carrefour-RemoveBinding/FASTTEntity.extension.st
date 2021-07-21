Extension { #name : #FASTTEntity }

{ #category : #'*Carrefour-RemoveBinding' }
FASTTEntity >> fullClean [
	CRFBindingCleaner new fullClean: self
]

{ #category : #'*Carrefour-RemoveBinding' }
FASTTEntity >> removeBinding [
	CRFBindingCleaner new accept: self
]
