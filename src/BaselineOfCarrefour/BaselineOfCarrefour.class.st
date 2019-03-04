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
		baseline: 'FAST-Java'
		with: [ spec
				loads: #('smacc' 'visitor');
				repository: 'github://moosetechnology/FAST-Java:master/src' ].
]

{ #category : #baselines }
BaselineOfCarrefour >> defineGroups: spec [
	spec
		group: 'default' with: #('all');
		group: 'all'
			with:
			#('Carrefour-Model-Generator' 'Carrefour-Model' 'Carrefour-FastAndBindingGenerator' 'Carrefour-FastAndBindingGenerator-Tests');
		group: 'generator' with: #('Carrefour-Model-Generator')
]

{ #category : #baselines }
BaselineOfCarrefour >> definePackages: spec [
	spec
		repository: 'https://github.com/badetitou/Carrefour';
		package: 'Carrefour-Model' with: [ spec requires: #('FAST-Java') ];
		package: 'Carrefour-Model-Generator' with: [ spec requires: #('FAST-Java') ];
		package: 'Carrefour-FastAndBindingGenerator' with: [ spec requires: #('FAST-Java') ];
		package: 'Carrefour-FastAndBindingGenerator-Tests' with: [ spec requires: #('FAST-Java') ]
]
