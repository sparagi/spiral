menu construction
addYellowMenuItems: aMenuMorph 
	"Add appropriate menu items to my yellow button menu."
	
	| first |
	first := true.
	self yellowMenuCategories do: [:messageSend | | operations |
		operations := messageSend value.
		first
			ifTrue: [first := false]
			ifFalse: [
				operations ifNotEmpty: [aMenuMorph addLine]].
		operations addItemsToMenu: aMenuMorph].
