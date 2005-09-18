event handling
addYellowMenuItems: aMenu
	"Add appropriate menu items to my yellow button menu."
	
	| first |
	first := true.
	self yellowMenuCategories do: [:messageSend | | operations |
		operations := messageSend value.
		first
			ifTrue: [first := false]
			ifFalse: [
				operations ifNotEmpty: [aMenu addLine]].
		operations addItemsToMenu: aMenu].
