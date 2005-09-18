accessing
removeEverything
	"Empty myself."
	currentPage
		ifNotNil: [self removeMorph: currentPage.
			currentPage := nil].
	pages := OrderedCollection new.
	self needsWork "what about resetting operators?"