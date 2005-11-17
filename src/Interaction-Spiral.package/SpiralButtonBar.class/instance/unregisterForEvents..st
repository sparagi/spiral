event handling
unregisterForEvents: anAction
	"Stop receiving update events for anAction."

	anAction receiver removeActionsWithReceiver: self forEvent: anAction selector