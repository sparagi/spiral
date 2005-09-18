accessing
highlightedTab
	"Answer my currently highlighted tab."
	
	^buttonRow submorphs detect: [:m | m isHighlighted] ifNone: [nil]