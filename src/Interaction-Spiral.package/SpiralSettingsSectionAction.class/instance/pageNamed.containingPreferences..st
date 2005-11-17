interface
pageNamed: aString containingPreferences: aCollection
	"Answer a new page named aString, containing the 
	preference Morphs in aCollection."
	
	| result |
	(aCollection isNil or: [aCollection isEmpty]) ifTrue: [^nil].
	result := self defaultPageClass initializedInstance.
	result changeTableLayout;
		setNameTo: aString;
		enableDrop: false;
		color: self defaultPageColor;
		borderWidth: 0.
	aCollection do: [:preference | result addMorphBack: preference].
	^result