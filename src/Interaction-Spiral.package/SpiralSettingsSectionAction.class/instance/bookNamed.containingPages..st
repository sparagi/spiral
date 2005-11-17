interface
bookNamed: aString containingPages: aCollection 
	"Answer a new notebook named aString, containing the  
	pages in aCollection."
	| result |
	(aCollection isNil
			or: [aCollection isEmpty])
		ifTrue: [^ nil].
	result := self defaultNotebookClass new.
	aCollection
		do: [:page | result addPageLast: page].
	result setNameTo: aString;
		 enableDrop: false;
		 color: self defaultPageColor;
		 borderWidth: 0;
		 layoutInset: 0;
		 addSectionOperator;
		firstPage.
	^ result