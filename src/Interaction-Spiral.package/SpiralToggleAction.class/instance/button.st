accessing
button
	"Answer a button for invoking me, or nil if no such button is appropriate."
	
	| result |
	result := super button.
	result ifNotNil: [
		result
			getStateSelector: #state;
			onColor: self defaultOnColor offColor: self defaultOffColor].
	^result