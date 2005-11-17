accessing
removeEverything
	"Empty myself."
	currentPage
		ifNotNil: [self removeMorph: currentPage.
			currentPage := nil.
			self triggerEvent: #currentPage].
	pages := OrderedCollection new.
	self triggerEvent: #sectionNavigationActions