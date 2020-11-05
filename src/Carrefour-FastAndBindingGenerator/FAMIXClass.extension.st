Extension { #name : #FAMIXClass }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXClass >> generateFastAndBind [
	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self generateFastJava
		metamodel: CRFModel metamodel;
		yourself.
	self bindFastModel: fastModel usingBinder: CRFBinderVisitor new.
	^ fastModel
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXClass >> generateFastIfNotDoneAndBind [
	self fastDeclaration ifNotEmpty: [ ^ self fastDeclaration mooseModel ].
	^ self generateFastAndBind 
]
