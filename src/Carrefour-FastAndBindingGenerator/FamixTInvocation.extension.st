Extension { #name : #FamixTInvocation }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTInvocation >> generateFastIfNotDoneAndBind [

	^ self sender generateFastIfNotDoneAndBind
]
