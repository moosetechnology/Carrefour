Class {
	#name : #CRFBindingCleaner,
	#superclass : #FASTJavaVisitor,
	#category : #'Carrefour-RemoveBinding'
}

{ #category : #generated }
CRFBindingCleaner >> fullClean: anEntity [

	"remove this entity, the top entities, all the FAST model"

	| mooseModel |
	mooseModel := anEntity mooseModel.
	mooseModel flushPrivateState.
	mooseModel flush.
	self accept: anEntity.
	mooseModel removeAll
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaAssignmentExpression: aFASTJavaAssignmentExpression [
	aFASTJavaAssignmentExpression famixVariable: nil.
	^ super visitFASTJavaAssignmentExpression: aFASTJavaAssignmentExpression
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaClassDeclaration: aFASTJavaClassDeclaration [
	aFASTJavaClassDeclaration famixTypeDefinition: nil.
	^ super visitFASTJavaClassDeclaration: aFASTJavaClassDeclaration
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaFieldAccess: aFASTJavaFieldAccess [
	aFASTJavaFieldAccess famixVariable: nil.
	^ super visitFASTJavaFieldAccess: aFASTJavaFieldAccess
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaInitializer: aFASTJavaInitializer [
	aFASTJavaInitializer famixMethod: nil.
	^ super visitFASTTVariableExpression: aFASTJavaInitializer
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaMethodEntity: aFASTJavaMethodEntity [
	aFASTJavaMethodEntity famixMethod: nil.
	^ super visitFASTJavaMethodEntity: aFASTJavaMethodEntity
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation [
	aFASTJavaMethodInvocation famixInvocation: nil.
	^ super visitFASTJavaMethodInvocation: aFASTJavaMethodInvocation
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaNewClassExpression: aFASTJavaNewClassExpression [
	aFASTJavaNewClassExpression famixType: nil.
	^ super visitFASTJavaNewClassExpression: aFASTJavaNewClassExpression
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaNewExpression: aFASTJavaNewExpression [
	aFASTJavaNewExpression famixInvocation: nil.
	^ super visitFASTJavaNewExpression: aFASTJavaNewExpression
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaParameter: aFASTJavaParameter [
	aFASTJavaParameter famixVariable fastDeclaration remove: aFASTJavaParameter.
	aFASTJavaParameter famixVariable: nil.
	^ super visitFASTJavaMethodInvocation: aFASTJavaParameter
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTJavaVariableDeclarator: aFASTJavaVariableDeclarator [
	aFASTJavaVariableDeclarator famixVariable: nil.
	^ super visitFASTJavaMethodInvocation: aFASTJavaVariableDeclarator
]

{ #category : #generated }
CRFBindingCleaner >> visitFASTTVariableExpression: aFASTVariableExpression [
	aFASTVariableExpression famixVariable: nil.
	^ super visitFASTTVariableExpression: aFASTVariableExpression
]
