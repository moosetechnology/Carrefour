Extension { #name : #FamixTParameterizedType }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTParameterizedType >> generateFastIfNotDoneAndBind [
	^ self parameterizableClass generateFastIfNotDoneAndBind
]
