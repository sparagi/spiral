accessing
currentPage
	"Answer my currently displayed page."
	
	((submorphs includes: currentPage) not and: [currentPage notNil]) ifTrue: [
		currentPage := nil.
		self triggerEvent: #currentPage].
	^currentPage
