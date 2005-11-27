event handling
nextPage
	"Go to my next page."

	| pageNumber |
	pageNumber := currentPage ifNil: [1]
		ifNotNil: [(self pageNumberOf: currentPage) + 1 min: pages size].
	self goToPageNumber: pageNumber