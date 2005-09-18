menu construction
addItemsToMenu: aMenuMorph 

	self do: [:each |
		each addItemToMenu: aMenuMorph].
	^aMenuMorph