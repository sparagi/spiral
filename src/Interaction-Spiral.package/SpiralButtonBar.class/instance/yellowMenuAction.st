event handling
yellowMenuAction
	"Answer a GenericActions which will respond with action categories to put on my yellow button menu."
	^GenericActions
		label: 'yellow menu'
		receiver: self
		selector: #yellowMenuActions
		arguments: #()