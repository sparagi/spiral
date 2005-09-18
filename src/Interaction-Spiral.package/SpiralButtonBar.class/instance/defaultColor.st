defaults
defaultColor
	"Answer my default color."

	| notebookColor |
	
	notebook ifNil: [^super defaultColor].
	notebookColor := notebook color.
	^(notebookColor saturation > 0.1)
		ifTrue: [notebookColor slightlyLighter]
		ifFalse: [notebookColor slightlyDarker].
