Class {
	#name : #CRFBindingStaticMethodTest,
	#superclass : #CRFBindingTest,
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #running }
CRFBindingStaticMethodTest >> setUp [
	super setUp.
	fastModel := (JavaSmaCCProgramNodeImporterVisitor new
		parseCodeMethodString: self fastMethodStaticInitialization)
		name: #fastModel;
		yourself.
	CRFBinderVisitor
		bindFastModel: self fastModel
		fromFamixMethodEntity:
			(self famixModel allMethods
				detect: [ :method | 
					method name = '<Initializer>'
						and: [ method parentType isAnonymousClass not ] ])
]

{ #category : #tests }
CRFBindingStaticMethodTest >> testBindingStaticInitialization [
	self assert: (self famixModel allMethods detect: [ :method | method name = '<Initializer>' and: [ method parentType isAnonymousClass not ] ]) fast equals: (self fastModel allWithType: FASTJavaInitializer) first.
	self assert: (self fastModel allWithType: FASTJavaInitializer) first famixMethod equals: (self famixModel allMethods detect: [ :method | method name = '<Initializer>' and: [ method parentType isAnonymousClass not ] ])
]
