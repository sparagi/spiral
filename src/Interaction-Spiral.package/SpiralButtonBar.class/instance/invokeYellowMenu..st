event handling
invokeYellowMenu: evt
	"Construct and pop up a menu in response to a yellow click."
	
	| yellowMenu |
	yellowMenu := (MorphicMenuAction wrap: self yellowMenuAction) control subMenu.
	yellowMenu popUpEvent: evt in: self world