Class {
	#name : #CRFBindingReturnNumberTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingReturnNumberTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodReturnNumberString)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allModelMethods
				detect: [ :method | method name = 'returnNumber' ])
]

{ #category : #running }
CRFBindingReturnNumberTest >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'returnNumber' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famixMethod equals: (self famixModel allMethods select: [ :method | method name = 'returnNumber' ]) first.

]

{ #category : #running }
CRFBindingReturnNumberTest >> testUsagesOfParameterI [
	"fastMethodReturnNumberString
	^ 'private int returnNumber(int i){
        return i;
    }'"

	self
		assert: (self famixModel allParameters detect: [ :parameter | parameter mooseName = #'hello::Hello.returnNumber(int).i' ]) fastAccesses second variable
		equals: self fastModel allFASTJavaMethodEntity first parameters first variable
]

{ #category : #running }
CRFBindingReturnNumberTest >> testUsagesOfReturnI [
	"fastMethodReturnNumberString
	^ 'private int returnNumber(int i){
        return i;
    }'"

	self
		assert: (self famixModel allParameters detect: [ :parameter | parameter mooseName = #'hello::Hello.returnNumber(int).i' ]) fastAccesses first
		equals: (self fastModel allWithType: FASTJavaReturnStatement) first children anyOne
]
