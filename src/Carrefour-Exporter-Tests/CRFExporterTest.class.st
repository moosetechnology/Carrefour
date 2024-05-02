"
A CRFExporterTest is a test class for testing the behavior of CRFExporter
"
Class {
	#name : #CRFExporterTest,
	#superclass : #TestCase,
	#instVars : [
		'exporter'
	],
	#category : #'Carrefour-Exporter-Tests'
}

{ #category : #running }
CRFExporterTest >> astFor: sourceCode withRule: rule [
	"same as in `FASTJavaExportVisitorTest`"

	^ JavaSmaCCProgramNodeImporterVisitor new accept: (JavaParser
			   createParserOnStream: (ReadStream on: sourceCode)
			   startingAt: (JavaParser perform: rule)) parse
]

{ #category : #running }
CRFExporterTest >> methodAST: sourceCode [
	"same as in `FASTJavaExportVisitorTest`"
	^self astFor: sourceCode withRule: #startingStateForclass_or_interface_body_declaration

]

{ #category : #running }
CRFExporterTest >> setUp [ 
	super setUp.
	exporter := CRFExporter new.
	exporter endOfLine: String cr
]

{ #category : #tests }
CRFExporterTest >> testExportOneClassWithOneMethodBinded [

	| model resultString aClass method ast primitiveInt |
	model := FamixJavaModel new.
	aClass := model newClassNamed: 'DemoClass'.
	method := model newMethodNamed: 'aMethod'.
	primitiveInt := model newPrimitiveTypeNamed: 'int'.
	method declaredType: primitiveInt.
	aClass addMethod: method.
	
	ast := self methodAST: 'int aMethod() { return 1; }'.
	
	method fast: ast.
	
	resultString := String streamContents: [ :stream |
		                exporter currentStream: stream.
		                aClass accept: exporter ].
	self assert: resultString equals: 'public class DemoClass {


    int aMethod() {
        return 1;
    }


}'
]
