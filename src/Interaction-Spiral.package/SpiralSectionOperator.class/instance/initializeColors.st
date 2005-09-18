initialization
initializeColors
	"Set my initial colors."

	super initializeColors.
	self 
		highlightColor: self defaultHighlightColor;
		regularColor: self defaultRegularColor.