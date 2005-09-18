defaults
defaultHighlightColor
	"Answer the default color my submorphs will use to highlight themselves."
	
	^notebook
		ifNil: [Color yellow]
		ifNotNil: [notebook color slightlyLighter].