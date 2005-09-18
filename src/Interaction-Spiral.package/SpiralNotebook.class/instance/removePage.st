event handling
removePage
	"Delete my current page."
	
	readOnly ifFalse: [
		currentPage ifNotNil: [self removePage: currentPage]].