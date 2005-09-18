accessing
unHighlight
	"I am not the currently selected tab; stop highlighting myself."

	isHighlighted := false.
	submorphs notEmpty ifTrue: [ |str |
		str := submorphs first.
		(str respondsTo: #contents:) 
			ifTrue: [str color: self regularColor]
			ifFalse: [self borderColor: Color transparent]]
