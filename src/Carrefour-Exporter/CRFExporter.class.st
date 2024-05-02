"
I combines `FAMIX2JavaVisitor` and `FASTJavaExportVisitor` to enable the generation of Java code from high level representation combined with AST level.
The basic idea is to modify the way the code of `FamixTMethod` is exported to switch from Famix environement to Fast environment using Carrefour binding.
"
Class {
	#name : #CRFExporter,
	#superclass : #Object,
	#category : #'Carrefour-Exporter'
}
