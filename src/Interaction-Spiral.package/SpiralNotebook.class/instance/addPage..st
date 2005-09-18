accessing
addPage: aMorph
	"Insert a new page in me."

	| insertionIndex |
	insertionIndex := self pageInsertionIndex.
	insertionIndex
		ifNil: [
			self addPageLast: aMorph]
		ifNotNil: [
			self addPage: aMorph afterIndex: insertionIndex]