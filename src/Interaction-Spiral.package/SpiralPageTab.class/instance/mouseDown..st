event handling
mouseDown: evt

	evt yellowButtonPressed
		ifTrue: [self invokeYellowMenu: evt].
	super mouseDown: evt
