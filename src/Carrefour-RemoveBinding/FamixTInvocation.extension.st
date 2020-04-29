Extension { #name : #FamixTInvocation }

{ #category : #'*Carrefour-RemoveBinding' }
FamixTInvocation >> ensureCleanBinding [
	self fast ifNotNil: [ :fast | fast rootNode fullClean ]
]
