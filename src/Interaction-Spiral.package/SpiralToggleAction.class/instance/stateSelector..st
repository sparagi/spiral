accessing
stateSelector: aSymbol
	"Set the selector I use to retrieve the current state."

	aSymbol
		ifNil: [
			stateDetectionSend := nil]
		ifNotNil: [
			stateDetectionSend := MessageSend receiver: receiver selector: aSymbol]
