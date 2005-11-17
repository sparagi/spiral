interface
control
	"Answer a SpiralNotebook or PasteUpMorph containing  
	preference Morphs for triggering the actions answered by my  
	genericAction."
	| children resultBook resultPage pageChildren |
	children := (self class wrapAll: genericAction value)
				collect: [:child | child control].
	pageChildren := children
				select: [:child | child isNil or: [child isNotebook]
						or: [child isPlayfieldLike]].
	children removeAll: pageChildren.
	resultPage := self pageNamed: genericAction label containingPreferences: (children copyWithout: nil).
	pageChildren
		ifNotEmpty: [pageChildren add: resultPage].
	resultBook := self bookNamed: genericAction label containingPages: (pageChildren copyWithout: nil).
	^ resultBook
		ifNil: [resultPage]