event handling
registerForEvents
	"Register for a currentPage event from my receiver."
	notebook
		ifNotNil: [notebook
				when: #currentPage
				send: #highlightCurrentPageTab
				to: self]