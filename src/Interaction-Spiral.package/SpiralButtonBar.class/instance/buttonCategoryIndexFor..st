event handling
buttonCategoryIndexFor: newActionCategory 
	"Answer the appropriate index for aSpiralAction, which is being inserted in buttonCategories."

	| previousAction actionFound |
	previousAction := nil.
	actionFound := false.
	self visibleButtonCategories.
	self allButtonActions do: 
			[:buttonCategory | 
			actionFound 
				ifFalse: 
					[buttonCategory = newActionCategory 
						ifTrue: [actionFound := true]
						ifFalse: 
							[(visibleButtonCategories includes: buttonCategory) 
								ifTrue: [previousAction := buttonCategory]]]].
	^previousAction ifNil: [0]
		ifNotNil: [visibleButtonCategories indexOf: previousAction]