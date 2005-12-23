event handling
mouseDown: evt

	(evt yellowButtonPressed and: [self hasYellowButtonMenu])
		ifTrue: [self invokeYellowMenu: evt].
	super mouseDown: evt