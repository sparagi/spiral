event handling
addPage
	"Insert a new page for the receiver, using the current background."
	| newPage |
	
	readOnly ifTrue: [^self].
	newPage := self defaultPageClass initializedInstance.
	newPage
		extent: self pageSize;
		color: self defaultPageColor;
		borderWidth: 0;
		setNameTo: self defaultPageName.
	self 
		addPage: newPage;
		goToPage: newPage