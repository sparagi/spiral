accessing
stateSelector: aSymbol arguments: argumentList
	"Set the selector and arguments I use to retrieve the current state."

	self stateSelector: aSymbol.
	aSymbol ifNotNil: [stateDetectionSend arguments: argumentList]
