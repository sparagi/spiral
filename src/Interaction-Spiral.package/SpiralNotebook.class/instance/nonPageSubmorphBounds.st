accessing
nonPageSubmorphBounds
	"Answer the bounds of my submorphs which are not pages."

	| result |
	result := nil.
	submorphs do: 
			[:m | 
			(m visible and: [(pages includes: m) not]) 
				ifTrue: 
					[result := result ifNil: [m fullBounds]
								ifNotNil: [result quickMerge: m fullBounds]]].
	^result ifNil: [self position corner: 0 @ 0]