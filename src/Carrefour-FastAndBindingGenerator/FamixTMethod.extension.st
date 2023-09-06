Extension { #name : #FamixTMethod }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> bindFastModel: fastModel [
	CRFMethodBinderVisitor new
		bindFastModel: fastModel toFamixEntity: self
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> generateFastAndBind [

	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self getFASTModel
		             metamodel: CRFModel metamodel;
		             yourself.
	self bindFastModel: fastModel.
	^ fastModel
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTMethod >> generateFastIfNotDoneAndBind [
	self fast ifNotNil: [ ^ self fast mooseModel ].
	^ self generateFastAndBind 
]
