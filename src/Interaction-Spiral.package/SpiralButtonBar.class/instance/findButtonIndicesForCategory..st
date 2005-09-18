event handling
findButtonIndicesForCategory: aSpiralAction 
	"Set categoryStartIndex and categoryEndIndex to indicate the range of submorph indices for the given category."

	| buttons |
	buttons := buttonCache at: aSpiralAction.
	buttons ifNotEmpty: 
			[categoryStartIndex := buttonRow submorphIndexOf: buttons first.
			categoryEndIndex := (buttonRow submorphIndexOf: buttons last) + 1]
		ifEmpty: 
			[| beforeSymbol |
			categoryStartIndex := 1.
			beforeSymbol := true.
			self buttonCategories do: 
					[:each | 
					each = aSpiralAction ifTrue: [beforeSymbol := false].
					beforeSymbol 
						ifTrue: 
							[buttons := buttonCache at: each.
							buttons 
								ifNotEmpty: [categoryStartIndex := (buttonRow submorphIndexOf: buttons last) + 1]]].
			categoryEndIndex := categoryStartIndex]