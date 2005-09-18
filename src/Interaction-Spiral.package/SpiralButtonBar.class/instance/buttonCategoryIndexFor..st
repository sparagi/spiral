event handling
buttonCategoryIndexFor: newActionCategory
	"Answer the appropriate index for aSpiralAction, which is being inserted in buttonCategories."

	| previousAction actionFound |
	actionFound := false.
	self buttonCategories.
	self allButtonCategories do: [:buttonCategory |
		actionFound ifFalse: [
			buttonCategory = newActionCategory
				ifTrue: [actionFound := true]
				ifFalse: [
					(buttonCategories includes: buttonCategory) ifTrue: [
						previousAction := buttonCategory]]]].
	^previousAction
		ifNil: [0]
		ifNotNil: [buttonCategories indexOf: previousAction]