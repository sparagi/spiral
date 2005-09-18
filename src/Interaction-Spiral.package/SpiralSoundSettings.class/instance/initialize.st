initialization
initialize
	"Set my initial state."
	
	super initialize.

	volume := self defaultVolume.
	pageTransitions := self defaultPageTransitions.
	pageAccompaniment := self defaultPageAccompaniment.