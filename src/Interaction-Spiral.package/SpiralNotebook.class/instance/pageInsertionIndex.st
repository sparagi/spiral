accessing
pageInsertionIndex
	"Answer the index at which to add a new page."

	^currentPage ifNotNil: [self pageNumberOf: currentPage]
