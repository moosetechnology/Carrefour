Extension { #name : #FamixJavaInterface }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixJavaInterface >> bindFastModel: fastModel [
	CRFClassBinderVisitor new
		bindFastModel: fastModel toFamixEntity: self
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixJavaInterface >> generateFastAndBind [

	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self getFASTModel
		             metamodel: CRFModel metamodel;
		             yourself.
	self bindFastModel: fastModel.
	^ fastModel
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FamixJavaInterface >> generateFastIfNotDoneAndBind [

	self fastDeclaration ifNotEmpty: [ 
		^ self fastDeclaration anyOne mooseModel ].
	self fastTypeDefinition ifNotNil: [ 
		^ self fastTypeDefinition mooseModel ].
	^ self isAnonymousClass
		  ifFalse: [ self generateFastAndBind ]
		  ifTrue: [ 
			  ((self
				    allAtScope: FamixTClass
				    until: [ :c | 
				    (c isKindOf: FamixJavaClass) and: [ c isAnonymousClass not ] ])
				   asOrderedCollection \ { self }) anyOne generateFastAndBind ]
]
