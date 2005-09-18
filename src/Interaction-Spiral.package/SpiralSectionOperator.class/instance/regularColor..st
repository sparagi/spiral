accessing
regularColor: aColor
	"Set my submorphs to have this regular color."
	
	super regularColor: aColor.
	buttonRow submorphsDo: [:m |
		m regularColor: aColor]