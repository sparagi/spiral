accessing
currentPage
	"Answer my currently displayed page."
	
	(submorphs includes: currentPage) ifFalse: [currentPage := nil].
	^currentPage
