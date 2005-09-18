initialization
initialize
	"Set my initial state."

	buttonCache := Dictionary new.
	buttonRow := AlignmentMorph new.
	buttonRow
		beTransparent;
		changeTableLayout;
		listDirection: #leftToRight;
		layoutInset: 0.
	super initialize.
	self
		clipSubmorphs: true;
		initializeColors;
		layoutInset: 0;
		hResizing: #rigid;
		addMorphBack: buttonRow