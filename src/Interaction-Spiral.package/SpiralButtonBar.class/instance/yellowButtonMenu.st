event handling
yellowButtonMenu
	"Answer a menu appropriate to a yellow button click."
	
	| result |
	result := MenuMorph new.
	self addYellowMenuItems: result.
	^result