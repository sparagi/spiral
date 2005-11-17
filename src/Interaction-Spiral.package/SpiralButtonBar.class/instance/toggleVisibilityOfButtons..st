accessing
toggleVisibilityOfButtons: anAction 
	"Answer the visibility of buttons in the category corresponding to anAction."

	(self visibleButtonCategories includes: anAction) 
		ifTrue: [
			self removeButtonsInCategory: anAction.
			visibleButtonCategories remove: anAction.
			self unregisterForEvents: anAction]
		ifFalse: [
			(self allButtonActions includes: anAction)
				ifTrue: [
					visibleButtonCategories
						add: anAction 
						afterIndex: (self buttonCategoryIndexFor: anAction).
					buttonCache at: anAction put: OrderedCollection new.
					self updateButtonCategory: anAction.
					self registerForEvents: anAction]
				ifFalse: [self error: 'cannot add unsupported category']]