accessing
button
	"Answer a button for invoking me, or nil if no such button is appropriate."

	^self buttonLabelMorph
		ifNil: [nil]
		ifNotNil: [ | result |
			result := super button.
			help ifNotNil: [
				result setBalloonText: help].
			result
				beTransparent;
				hResizing: #shrinkWrap;
				yourself].