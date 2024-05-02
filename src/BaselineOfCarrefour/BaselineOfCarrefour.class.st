Class {
	#name : #BaselineOfCarrefour,
	#superclass : #BaselineOf,
	#category : #BaselineOfCarrefour
}

{ #category : #baselines }
BaselineOfCarrefour >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec description: 'Binding FAST and Famix'.
			spec author: 'BenoitVerhaeghe'.
			self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfCarrefour >> customProjectAttributes [

	^ RPackageOrganizer default packages
		  detect: [ :package | package name = 'BaselineOfTinyLogger' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsTinyLogger ) ]
]

{ #category : #baselines }
BaselineOfCarrefour >> defineDependencies: spec [

	spec baseline: 'FASTJava' with: [
		spec
			loads: #( 'all' );
			repository: 'github://moosetechnology/FAST-Java:v3.0.5/src' ].
	spec
		baseline: 'Famix2Java'
		with: [
		spec repository: 'github://moosetechnology/FAMIX2Java:v4/src' ].
	spec for: #NeedsTinyLogger do: [
		spec
			baseline: 'TinyLogger'
			with: [ spec repository: 'github://jecisc/TinyLogger:v1.x.x/src' ] ]
]

{ #category : #baselines }
BaselineOfCarrefour >> defineGroups: spec [
	spec group: 'generator' with: #('Carrefour-Model-Generator')
]

{ #category : #baselines }
BaselineOfCarrefour >> definePackages: spec [

	spec
		package: 'Carrefour-Model' with: [ spec requires: #( 'FASTJava' ) ];
		package: 'Carrefour-Model-Generator'
		with: [ spec requires: #( 'FASTJava' ) ];
		package: 'Carrefour-FastAndBindingGenerator'
		with: [ spec requires: #( 'FASTJava' ) ];
		package: 'Carrefour-Tests'
		with: [
			spec requires: #( 'FASTJava' 'Carrefour-FastAndBindingGenerator' ) ];
		package: 'Carrefour-FastAndBindingGenerator-Tests' with: [
			spec requires: #( 'FASTJava' 'Carrefour-FastAndBindingGenerator'
					   'Carrefour-Tests' ) ];
		package: 'Carrefour-Extension'
		with: [ spec requires: #( 'FASTJava' ) ];
		package: 'Carrefour-RemoveBinding'
		with: [
			spec requires: #( 'FASTJava' 'Carrefour-FastAndBindingGenerator' ) ];
		package: 'Carrefour-RemoveBinding-Tests'
		with: [
			spec requires: #( 'Carrefour-RemoveBinding'
				   'Carrefour-Tests' ) ].
	"Exporter"
	spec
		package: 'Carrefour-Exporter'
		with: [ spec requires: #( 'Carrefour-Model' 'Famix2Java' ) ].
	spec
		package: 'Carrefour-Exporter-Tests'
		with: [ spec requires: #( 'Carrefour-Exporter' ) ]
]
