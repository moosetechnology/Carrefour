Extension { #name : #FamixTSourceEntity }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTSourceEntity >> bindFASTModel [
	"ask for the FAST model of the Famix receiver entity, if found, put it in Carrefour and
	bind it to the Famix model of the receiver"

	| fastModel |
	fastModel := self getFASTModel.
	fastModel ifNotNil: [
		fastModel metamodel: CRFModel metamodel.
		self bindFastModel: fastModel ].
	^ fastModel
]
