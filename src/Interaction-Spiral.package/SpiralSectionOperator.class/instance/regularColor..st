accessing
regularColor: aColor 
	"Set my submorphs to have this regular color."
	"Color transparent is not recommended because of a 
	highlighting bug in PluggableButtonMorph."
	super regularColor: aColor.
	buttonRow
		submorphsDo: [:m | m regularColor: aColor]