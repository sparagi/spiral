event handling
wantsDroppedMorph: aMorph event: evt 
	"Answer whether I'd like to accept aMorph, which someone is trying to drop on me."

	^(readOnly not) 
		and: [currentPage bounds containsPoint: (self pointFromWorld: evt cursorPoint)] 
		and: [super wantsDroppedMorph: aMorph event: evt]