event handling
nextPage
	"Go to my next page."
	
	| pageNumber |
	currentPage
		ifNil: [
			pageNumber := 1]
		ifNotNil: [
			pageNumber := ((self pageNumberOf: currentPage) + 1) min: pages size].
	self goToPageNumber:  pageNumber