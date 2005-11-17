event handling
removeButtonsInCategory: actionCategory
	"Remove my submorphs which are buttons in actionCategory."

	self findButtonIndicesForCategory: actionCategory.
	categoryStartIndex = categoryEndIndex ifFalse: [
		self spacer ifNotNil: [
			categoryStartIndex := categoryStartIndex - 1].	"We also want to remove the spacer."
		categoryEndIndex := categoryEndIndex - 1.		"But we don't want to remove the first morph associated with the next category."
		categoryStartIndex to: categoryEndIndex do: [:ignored |
			buttonRow removeMorph: (buttonRow submorphs at: categoryStartIndex)]].
	buttonCache removeKey: actionCategory