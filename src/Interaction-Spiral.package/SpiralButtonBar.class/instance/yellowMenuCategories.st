accessing
yellowMenuCategories
		"Answer a SpiralActions representing message categories that interest me, i.e. invoking the actions in my answer will yield SpiralActions which contain the actions that interest me."
	
	| result |
	result := SpiralActions new.
	self interestingReceivers do: [:interestingObject |
		interestingObject ifNotNil: [
			 result addAll: interestingObject interestingOperationCategories]].
	^result