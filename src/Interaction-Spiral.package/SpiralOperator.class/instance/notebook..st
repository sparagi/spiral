accessing
notebook: aNotebook
	"Set the SpiralNotebook I operate."
	
	notebook = aNotebook ifFalse: [
		notebook ifNotNil: [notebook removeDependent: self].
		notebook := aNotebook.
		notebook ifNotNil: [notebook addDependent: self]].