accessing
labelRectangle
	| tRect |
	tRect := self toggleRectangle.
	^ (tRect right + 4) @ tRect top extent: (self measureContents x + 4)@ tRect height