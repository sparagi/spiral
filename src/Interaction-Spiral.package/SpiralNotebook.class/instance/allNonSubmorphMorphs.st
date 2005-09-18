accessing
allNonSubmorphMorphs
	"Return a collection containing all morphs in me which are not currently in my submorph containment hierarchy."

	| result |
	result := OrderedCollection new.
	pages do: [:p |
		p isInMemory ifTrue: [
			p == currentPage ifFalse: [result add: p]]].
	^result