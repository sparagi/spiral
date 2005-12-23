initialization
initialize
	"Set my initial state."
	super initialize.
	fullScreen := false.
	readOnly := false.
	passDownColors := true.
	operators := Set new.
	soundSettings := self defaultSoundSettingsClass new.
	self removeEverything; extent: self defaultExtent; hResizing: #rigid; vResizing: #rigid; layoutInset: 0; beSticky; changeProportionalLayout