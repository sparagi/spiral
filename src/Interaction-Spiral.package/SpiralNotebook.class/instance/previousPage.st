event handling
previousPage
	"Go to my previous page."
	
	| pageNumber |
	currentPage
		ifNil: [
			pageNumber := pages size max: 1]
		ifNotNil: [
			pageNumber := ((self pageNumberOf: currentPage) - 1) max: 1].
	self goToPageNumber:  pageNumber