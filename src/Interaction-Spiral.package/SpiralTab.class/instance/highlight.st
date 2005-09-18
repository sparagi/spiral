accessing
highlight
	"I am the currently selected tab; highlight myself."

	isHighlighted := true.
	submorphs notEmpty ifTrue: [ |str |
		str := submorphs first.
		(str respondsTo: #contents:) 
			ifTrue: [str color: self highlightColor]
			ifFalse: [self borderColor: self highlightColor]]