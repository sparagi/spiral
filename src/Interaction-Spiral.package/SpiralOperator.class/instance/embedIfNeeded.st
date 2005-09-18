event handling
embedIfNeeded
	"If I have been floating, embed myself in my notebook instead."
	
	| spacer |
	spacer := self valueOfProperty: #swapWithSpacerToEmbed ifAbsent: [nil].
	spacer ifNotNil: [
		self
			position: spacer position;
			extent: spacer extent;
			borderWidth: spacer borderWidth;
			hResizing: spacer hResizing;
			vResizing: spacer vResizing;
			setProperty: #morphicLayerNumber toValue:
				(spacer valueOfProperty: #morphicLayerNumber ifAbsent: [nil]). 
		spacer owner replaceSubmorph: spacer by: self.
		self setProperty: #swapWithSpacerToEmbed toValue: nil].
