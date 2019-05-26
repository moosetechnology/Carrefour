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
		fromFamixMethodEntity: (self famixModel allModelMethods select: [ :method | method name = 'returnNumber' ]) first
]

{ #category : #running }
CRFBindingReturnNumberTest >> testBindingMethod [
	self assert: (self famixModel allMethods select: [ :method | method name = 'returnNumber' ]) first fast equals: self fastModel allFASTJavaMethodEntity first.
	self assert: self fastModel allFASTJavaMethodEntity first famix equals: (self famixModel allMethods select: [ :method | method name = 'returnNumber' ]) first.

]

{ #category : #running }
CRFBindingReturnNumberTest >> testUsagesOfParameterI [
	"fastMethodReturnNumberString
	^ 'private int returnNumber(int i){
        return i;
    }'"

	self
		assert: (self famixModel allParameters select: [ :parameter | parameter name = 'i' ]) first fastAccesses second
		equals: self fastModel allFASTJavaMethodEntity first parameters first variable
]

{ #category : #running }
CRFBindingReturnNumberTest >> testUsagesOfReturnI [
	"fastMethodReturnNumberString
	^ 'private int returnNumber(int i){
        return i;
    }'"

	self
		assert: (self famixModel allParameters select: [ :parameter | parameter name = 'i' ]) first fastAccesses first
		equals: (self fastModel allWithType: FASTReturnStatement) first childrenNode first
]
