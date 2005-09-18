accessing
notebook: aNotebook
	"Set the SpiralNotebook I operate."

	| submorphsCopy |
	submorphsCopy := buttonRow submorphs copy.
	buttonRow removeAllMorphs.
	submorphsCopy do: [:m |
		m release].
	super notebook: aNotebook.
	buttonCategories := nil.
	buttonCache := Dictionary new.
	self initializeColors.
	self addButtons