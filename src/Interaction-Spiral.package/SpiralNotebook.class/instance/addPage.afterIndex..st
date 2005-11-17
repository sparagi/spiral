accessing
addPage: aMorph afterIndex: anInteger 
	"Insert a new page in me."

	aMorph
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	pages add: aMorph afterIndex: anInteger.
	self triggerEvent: #sectionNavigationActions.
	currentPage ifNil: 
			[self goToPage: aMorph.
			self extent: self defaultExtent]