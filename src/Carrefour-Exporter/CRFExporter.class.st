"
I combines `FAMIX2JavaVisitor` and `FASTJavaExportVisitor` to enable the generation of Java code from high level representation combined with AST level.
The basic idea is to modify the way the code of `FamixTMethod` is exported to switch from Famix environement to Fast environment using Carrefour binding.
"
Class {
	#name : #CRFExporter,
	#superclass : #FAMIX2JavaVisitor,
	#category : #'Carrefour-Exporter'
}

{ #category : #accessing }
CRFExporter >> visitMethod: aMethod [

	aMethod isStub ifTrue: [ ^ self ].
	self printMethodAnnotations: aMethod.
	self indent.
	aMethod isPrivate ifTrue: [ self <<< 'private ' ].
	aMethod isProtected ifTrue: [ self <<< 'protected ' ].
	aMethod isPublic ifTrue: [ self <<< 'public ' ].
	aMethod isClassSide ifTrue: [ self <<< 'static ' ].
	"Printing return type for method"
	aMethod declaredType ifNotNil: [ :declaredType |
		self printDeclaredType: declaredType.
		currentStream << String space ].
	"Printing name + parameters of method"
	(aMethod name = '<Initializer>' or: [
		 aMethod isAnInitializer and: [ aMethod isConstructor not ] ])
		ifFalse: [
			self
				<<< aMethod name;
				<<< '('.
			(aMethod parameters sorted: [ :p :p2 |
				 p sourceAnchor startPos < p2 sourceAnchor startPos ])
				do: [ :parameter | parameter accept: self clone ]
				separatedBy: [ self <<< ', ' ].
			self <<< ')' ]
		ifTrue: [ self << 'static' ].
	"print exception"
	((aMethod withMethodsOverriding collect: [ :m |
		  m thrownExceptions , m declaredExceptions ]) flattened asSet
		 asOrderedCollection sorted: #name ascending) ifNotEmpty: [
		:exceptions |
		self <<< ' throws '.
		exceptions
			do: [ :exception | self <<< exception name ]
			separatedBy: [ self <<< ', ' ] ].

	"Printing body of method if class is not abstract or an interface"
	((aMethod atScope: FamixTClass) anyOne isInterface or: [
		 aMethod isAbstract isNotNil and: [ aMethod isAbstract ] ])
		ifTrue: [ self <<< ';' ]
		ifFalse: [
			aMethod fast
				ifNotNil: [ :fastMethod |
					| fastJavaExporterVisitor |
					fastJavaExporterVisitor := FASTJavaExportVisitor new
						                           outputStream: self currentStream;
						                           indentSize: tabulationSize;
						                           yourself.
					self <<< ' '.
					1 to: tabs do: [ :tab | fastJavaExporterVisitor indent ].
					fastMethod statementBlock accept: fastJavaExporterVisitor ]
				ifNil: [
					currentStream << ' {'.
					self eol.
					self <<< aMethod bodySourceText.
					self
						eol;
						<< '}' ] ]
]
