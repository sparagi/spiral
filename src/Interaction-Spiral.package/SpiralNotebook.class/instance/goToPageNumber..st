event handling
goToPageNumber: anInteger
	"Change the currently displayed page to the page with the given number."

	((0 < anInteger) and: [anInteger <= pages size]) ifFalse: [
		self error: 'no such page'].
	self goToPage: (pages at: anInteger)