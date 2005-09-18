event handling
highlightTab: aTab
	"Highlight the provided tab, and unhighlight the others."
	
	buttonRow submorphsDo:
		[:m | m == aTab
			ifTrue: [m highlight]
			ifFalse: [m unHighlight]]