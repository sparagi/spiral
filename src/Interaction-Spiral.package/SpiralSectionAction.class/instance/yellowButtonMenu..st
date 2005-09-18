menu construction
yellowButtonMenu: shiftPressed
	"Construct and answer my yellow button menu."
	
	| result |
	result := MenuMorph new.
	self addYellowMenuItems: result.
	^result
	