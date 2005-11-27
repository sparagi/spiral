event handling
previousPage
	"Go to my previous page."

	| pageNumber |
	pageNumber := currentPage ifNil: [pages size max: 1]
		ifNotNil: [(self pageNumberOf: currentPage) - 1 max: 1].
	self goToPageNumber: pageNumber