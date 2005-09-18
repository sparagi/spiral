operations
interestingOperationCategories
	"Answer a SpiralActions containing all operation categories 
	that are interesting for me."
	| result |
	result := SpiralActions new.
	result
		add: (SpiralAction
				label: 'display preferences'
				receiver: self
				selector: #displayPreferencesOperations
				arguments: #()).
	^ result