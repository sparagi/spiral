event handling
removeSpecificPage: aPage
	"Delete the given page."
	
	readOnly ifFalse: [
		aPage ifNotNil: [self removePage: aPage]].