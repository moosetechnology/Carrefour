Class {
	#name : #CRFBindingCleaner,
	#superclass : #FASTJavaVisitor,
	#category : #'Carrefour-RemoveBinding'
}

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	aFASTJavaMethodEntity famix privateState attributeAt: #fast put: nil.
	aFASTJavaMethodEntity privateState attributeAt: #famix put: nil.
	^ self visitFASTNamedBehaviouralEntity: aFASTJavaMethodEntity
]
