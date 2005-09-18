accessing
removePage: pageToRemove 
	"Remove pageToRemove from my collection of pages."

	| thisPage savedSubmorphs |
	thisPage := self pageNumberOf: currentPage.
	pages remove: pageToRemove.
	currentPage = pageToRemove 
		ifTrue: [self goToPageNumber: (thisPage min: pages size)].
	savedSubmorphs := self valueOfProperty: #savedSubmorphs ifAbsent: [nil].
	(savedSubmorphs notNil and: [savedSubmorphs includes: pageToRemove]) 
		ifTrue: 
			[savedSubmorphs := savedSubmorphs 
						collect: [:s | s = pageToRemove ifTrue: [currentPage] ifFalse: [s]].
			self setProperty: #savedSubmorphs toValue: savedSubmorphs].
	self changed: #sectionNavigationOperations