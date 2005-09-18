event handling
addYellowMenuItems: aMenu
	"Add appropriate menu items to my yellow button menu."
	
	notebook addPageMenuItemsFor: referent to: aMenu.
	aMenu submorphs ifNotEmpty: [
		aMenu addLine].
	referent addBookMenuItemsTo: aMenu.
	aMenu submorphs ifNotEmpty: [ | mightBeALine |
		mightBeALine := aMenu lastSubmorph.
		(mightBeALine isKindOf: MenuLineMorph)
			ifTrue: [aMenu removeMorph: mightBeALine]]
	