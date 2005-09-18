event handling
update: anAspect
	"AnAspect of one of my models has changed; update myself."

	(anAspect = #currentPage) ifTrue: [ 
		self highlightTabFor: notebook currentPage].
	super update: anAspect
