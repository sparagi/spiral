accessing
toggleVisibilityOfButtons: aSpiralAction 
	"Answer the visibility of buttons in the category corresponding to aSpiralAction."

	(self buttonCategories includes: aSpiralAction) 
		ifTrue: [
			self removeButtonsInCategory: aSpiralAction.
			buttonCategories remove: aSpiralAction]
		ifFalse: [
			(self allButtonCategories includes: aSpiralAction)
				ifTrue: [
					buttonCategories
						add: aSpiralAction 
						afterIndex: (self buttonCategoryIndexFor: aSpiralAction).
					buttonCache at: aSpiralAction put: SpiralActions new.
					self updateButtonCategory: aSpiralAction]
				ifFalse: [self error: 'cannot add unsupported category']]