accessing
notebook: aNotebook
	"Set the SpiralNotebook I operate."
	
	self unregisterForEvents.
	super notebook: aNotebook.
	self registerForEvents
	