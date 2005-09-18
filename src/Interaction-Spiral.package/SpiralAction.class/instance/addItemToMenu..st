menu construction
addItemToMenu: aMenu
	"Add a MenuItem to invoke me to aMenu."
	
	super addItemToMenu: aMenu.
	help ifNotNil: [aMenu balloonTextForLastItem: help]
	