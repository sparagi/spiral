event handling
mouseUp: evt
	"The mouse came up in the receiver; if it was a red click and the mouse is still within the receiver at this point, perform my action."

	((self containsPoint: evt cursorPoint) and: [evt redButtonChanged])
		ifTrue: [self redButtonAction].
	super mouseUp: evt
