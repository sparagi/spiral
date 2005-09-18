accessing
highlightColor: aColor
	"Set my submorphs to have this highlight color."
	
	super highlightColor: aColor.
	buttonRow submorphsDo: [:m |
		m highlightColor: aColor]