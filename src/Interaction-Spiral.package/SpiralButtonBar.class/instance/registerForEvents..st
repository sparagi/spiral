event handling
registerForEvents: anAction
	"Start receiving update events for anAction."

	anAction receiver when: anAction selector send: #updateButtonCategory: to: self with: anAction