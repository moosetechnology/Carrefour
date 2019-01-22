Extension { #name : #FAMIXMethod }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXMethod >> generateFast [
	^ JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self sourceAnchor sourceText
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXMethod >> generateFastAndBind [
	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self generateFast.
	CRFBinderVisitor new bindFastModel: fastModel fromFamixEntity: self
]
