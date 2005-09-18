initialization
initialize
	"I begin unhighlighted."
	
	super initialize.
	self 
		unHighlight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap