event handling
highlightTabFor: aMorph
	"Highlight my tab which refers to aMorph, and unhighlight the others."
	
	| highlightedTab |
	buttonRow submorphsDo: [:m | | action arguments page |
		action := m model.
		action ifNotNil: [
			[arguments := action arguments] on: MessageNotUnderstood do: []].
		(arguments notNil and: [arguments notEmpty]) ifTrue: [
			page := arguments first].
		"Whew!"
		(page= aMorph)
				ifTrue: [m highlight.  highlightedTab := m]
				ifFalse: [m unHighlight]].
	^highlightedTab