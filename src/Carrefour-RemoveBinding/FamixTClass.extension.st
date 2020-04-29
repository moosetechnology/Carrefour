Extension { #name : #FamixTClass }

{ #category : #'*Carrefour-RemoveBinding' }
FamixTClass >> ensureCleanBinding [
	self fastDeclaration ifNotEmpty: [ :decl | decl anyOne rootNode fullClean ].
	self fastAccesses ifNotEmpty: [ :decl | decl anyOne rootNode fullClean ].
]
