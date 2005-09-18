event handling
wantsDroppedMorph: aMorph event: evt
	"Answer whether I'd like to accept aMorph, which someone is trying to drop on me."
	
	readOnly ifTrue: [^false].
	(currentPage bounds containsPoint: (self pointFromWorld: evt cursorPoint))
		ifFalse: [^false].
	^super wantsDroppedMorph: aMorph event: evt