initialization
initialize
	"Set my initial state."

	super initialize.
	self 
		initializeColors;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.