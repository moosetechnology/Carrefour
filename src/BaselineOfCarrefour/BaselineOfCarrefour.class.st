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
]

{ #category : #baselines }
BaselineOfCarrefour >> defineGroups: spec [
	spec group: 'default' with: #('Carrefour-Model-Generator')
]

{ #category : #baselines }
BaselineOfCarrefour >> definePackages: spec [
	spec
		repository: 'https://github.com/badetitou/Carrefour';
		package: 'Carrefour-Model-Generator'
]
