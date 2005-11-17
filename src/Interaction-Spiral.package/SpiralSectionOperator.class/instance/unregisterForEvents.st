event handling
unregisterForEvents
	"Unregister for a currentPage event from my notebook."
	notebook
		ifNotNil: [notebook
				removeActionsWithReceiver: self
				forEvent: #currentPage]