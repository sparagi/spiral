initialization
addOperator: operator
	"Add an operator as one of my submorphs."
	| offset outerCorner |
	operator fullBounds.
	offset := self operatorOffset.
	offset x = 0
		ifTrue: [
			outerCorner := 1@0]
		ifFalse: [
			outerCorner := 0@1].
	self
		addMorph: operator
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: outerCorner)
			offsets: (0@0 corner: offset)).
	self extent: self defaultExtent