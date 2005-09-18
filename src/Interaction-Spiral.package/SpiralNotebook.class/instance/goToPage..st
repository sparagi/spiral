event handling
goToPage: pageMorph 
	"Change the currently displayed page to the given pageMorph."
	(pages includes: pageMorph)
		ifFalse: [self error: 'no such page'].
	currentPage
		ifNotNil: [self removeMorph: currentPage].
	self
		addMorph: pageMorph
		fullFrame: (LayoutFrame
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (self operatorOffset corner: 0 @ 0)).
	currentPage := pageMorph.
	self changed: #currentPage