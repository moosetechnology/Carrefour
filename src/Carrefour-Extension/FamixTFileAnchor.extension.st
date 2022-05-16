Extension { #name : #FamixTFileAnchor }

{ #category : #'*Carrefour-Extension' }
FamixTFileAnchor >> intervalAsCharPos [
	^ self startPos to: self endPos
]
