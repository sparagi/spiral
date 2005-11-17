defaults
defaultExtent
	"Answer my default extent."
	| layoutInset result b |
	b := self nonPageSubmorphBounds.
	b := b
				quickMerge: (b bottomLeft extent: self pageSize).
	result := b extent.
	result := result + (borderWidth * 2).
	layoutInset := self layoutInset.
	result := result + ((layoutInset * 2) @ (layoutInset * 3)).
	^ result asPoint