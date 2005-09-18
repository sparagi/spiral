event handling
cachePosition
	"Remember my position so I can restore myself later."

	self setProperty: #oldPosition toValue: self position.
