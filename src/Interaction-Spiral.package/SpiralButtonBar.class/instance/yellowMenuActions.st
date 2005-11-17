event handling
yellowMenuActions
		"Answer an OrderedCollection representing message categories that interest me."
	
	| result |
	result := OrderedCollection new.
	self interestingReceivers do: [:interestingObject |
		interestingObject ifNotNil: [
			 result addAll: interestingObject interestingActions]].
	^result