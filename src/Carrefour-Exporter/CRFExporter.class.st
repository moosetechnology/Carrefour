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
CRFExporter >> printStatementBlockOf: aMethod [

	aMethod fast
		ifNotNil: [ :fastMethod |
			| fastJavaExporterVisitor |
			fastJavaExporterVisitor := FASTJavaExportVisitor new
				                           outputStream: self currentStream;
				                           indentSize: tabulationSize;
				                           yourself.
			self << ' '.
			1 to: tabs do: [ :tab | fastJavaExporterVisitor indent ].
			fastMethod statementBlock accept: fastJavaExporterVisitor ]
		ifNil: [ super printStatementBlockOf: aMethod ]
]
