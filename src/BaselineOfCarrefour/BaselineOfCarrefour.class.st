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
BaselineOfCarrefour >> defineDependencies: spec [
	spec
		baseline: 'FASTJava'
		with: [ spec
				loads: #('all');
				repository: 'github://moosetechnology/FAST-Java:v1.0.6/src' ].
]

{ #category : #baselines }
BaselineOfCarrefour >> defineGroups: spec [
	spec
		group: 'default' with: #('all');
		group: 'all'
			with:
			#('Carrefour-Model-Generator' 'Carrefour-Model' 'Carrefour-FastAndBindingGenerator' 'Carrefour-FastAndBindingGenerator-Tests' 'Carrefour-Extension' 'Carrefour-RemoveBinding' 'Carrefour-RemoveBinding-Tests');
		group: 'generator' with: #('Carrefour-Model-Generator')
]

{ #category : #baselines }
BaselineOfCarrefour >> definePackages: spec [
	spec
		repository: 'https://github.com/badetitou/Carrefour';
		package: 'Carrefour-Model' with: [ spec requires: #('FASTJava') ];
		package: 'Carrefour-Model-Generator' with: [ spec requires: #('FASTJava') ];
		package: 'Carrefour-FastAndBindingGenerator' with: [ spec requires: #('FASTJava') ];
		package: 'Carrefour-FastAndBindingGenerator-Tests' with: [ spec requires: #('FASTJava' 'Carrefour-FastAndBindingGenerator') ];
		package: 'Carrefour-Extension' with: [ spec requires: #('FASTJava') ];
		package: 'Carrefour-RemoveBinding' with: [ spec requires: #('FASTJava' 'Carrefour-FastAndBindingGenerator') ];
		package: 'Carrefour-RemoveBinding-Tests' with: [ spec requires: #('Carrefour-RemoveBinding') ]
]
