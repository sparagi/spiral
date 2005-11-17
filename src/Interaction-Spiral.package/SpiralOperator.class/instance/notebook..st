accessing
notebook: aNotebook
	"Set the SpiralNotebook I operate."
	
	notebook ifNotNil: [notebook unregisterOperator: self].
	notebook := aNotebook.
	notebook ifNotNil: [notebook registerOperator: self]