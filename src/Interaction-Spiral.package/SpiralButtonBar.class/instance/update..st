event handling
update: aSymbol 
	"Something about my model has changed; update myself."

	self buttonCategories do: [:category |
		category selector = aSymbol ifTrue: [
			self updateButtonCategory: category]]