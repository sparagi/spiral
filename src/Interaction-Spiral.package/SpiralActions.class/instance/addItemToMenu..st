menu construction
addItemToMenu: aMenu 
	| subMenu |
	subMenu := MenuMorph new.
	self addItemsToMenu: subMenu.
	aMenu add: self label translated subMenu: subMenu.
	help
		ifNotNil: [aMenu balloonTextForLastItem: help]