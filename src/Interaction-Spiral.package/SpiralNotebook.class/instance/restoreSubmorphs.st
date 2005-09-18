layout
restoreSubmorphs
	"Restore my submorphs to a previously saved value, except with the current page instead of the previous one."
	
	| savedSubmorphs |
	savedSubmorphs := self valueOfProperty: #savedSubmorphs ifAbsent: [nil].
	savedSubmorphs ifNotNil: [
		savedSubmorphs := savedSubmorphs collect: [:s | 
			(pages includes: s)
				ifTrue: [currentPage]
				ifFalse: [s]].
		self setProperty: #savedSubmorphs toValue: savedSubmorphs].
	super restoreSubmorphs