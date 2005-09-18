accessing
equivalentSpacer
	"Answer a transparent spacer which will hold my place, typically while I'm floating."
	
	| result |
	result := Morph new.
	result
		color: self color;
		borderWidth: self borderWidth;
		position: self position;
		extent: self extent;
		hResizing: self hResizing;
		vResizing: self vResizing;
		setProperty: #morphicLayerNumber toValue:
			(self valueOfProperty: #morphicLayerNumber ifAbsent: [nil]). 
	^result