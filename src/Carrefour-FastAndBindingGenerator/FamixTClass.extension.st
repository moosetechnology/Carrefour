Extension { #name : #FamixTClass }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTClass >> bindFastModel: fastModel usingBinder: binder [
	binder bindFastModel: fastModel fromFamixClassEntity: self
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTClass >> generateFastAndBind [
	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self generateFastJava
		metamodel: CRFModel metamodel;
		yourself.
	self bindFastModel: fastModel usingBinder: CRFBinderVisitor new.
	^ fastModel
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixTClass >> generateFastIfNotDoneAndBind [
	self fastDeclaration ifNotEmpty: [ ^ self fastDeclaration anyOne mooseModel ].
	self fastTypeDefinition ifNotNil: [ ^ self fastTypeDefinition mooseModel ].
	^ self generateFastAndBind 
]
