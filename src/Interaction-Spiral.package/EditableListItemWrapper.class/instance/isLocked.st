testing
isLocked
	"Answer whether my string is locked."
	^model isNil or: [putStringSelector isNil]