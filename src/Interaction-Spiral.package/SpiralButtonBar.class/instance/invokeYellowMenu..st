event handling
invokeYellowMenu: evt
	"Construct and pop up a menu in response to a yellow click."
	
	self yellowButtonMenu popUpEvent: evt in: self world