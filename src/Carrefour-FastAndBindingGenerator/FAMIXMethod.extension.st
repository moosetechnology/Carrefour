Extension { #name : #FAMIXMethod }

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXMethod >> generateFast [
	^ JavaSmaCCProgramNodeImporterVisitor new parseCodeMethodString: self sourceAnchor sourceText
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXMethod >> generateFastAndBind [
	| fastModel |
	self assert: self sourceAnchor isNotNil.
	fastModel := self generateFast metamodel: FASTJavaMetamodelGenerator metamodel; yourself.
	CRFBinderVisitor new
		bindFastModel: fastModel
		fromFamixMethodEntity: self.
	^ fastModel
]

{ #category : #'*Carrefour-FastAndBindingGenerator' }
FAMIXMethod >> generateFastIfNotDoneAndBind [
	self fast ifNotNil: [ ^ self fast mooseModel ].
	^ self generateFastAndBind 
]
