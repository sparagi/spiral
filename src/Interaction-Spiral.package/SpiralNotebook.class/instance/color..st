accessing
color: aColor
	"Set my color."

	super color: aColor.
	operators do: [:operator | operator initializeColors].
	pages do: [:page | page color: aColor].