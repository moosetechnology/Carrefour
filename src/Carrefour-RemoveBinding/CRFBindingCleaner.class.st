Class {
	#name : #CRFBindingCleaner,
	#superclass : #FASTJavaVisitor,
	#category : #'Carrefour-RemoveBinding'
}

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	aFASTJavaMethodEntity famix: nil.
	^ super visitFASTJavaMethodEntity: aFASTJavaMethodEntity
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation [
	aFASTJavaMethodInvocation famix: nil.
	^ super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaNewExpression: aFASTJavaNewExpression [
	aFASTJavaNewExpression famix: nil.
	^ super visitFASTJavaNewExpression: aFASTJavaNewExpression
]
