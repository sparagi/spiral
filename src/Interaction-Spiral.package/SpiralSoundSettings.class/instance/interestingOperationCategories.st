operations
interestingOperationCategories
	"Answer a SpiralActions containing all operation categories 
	that are interesting for me."
	| result |
	result := SpiralActions new.
	result
		add: (SpiralAction
				label: 'sound preferences'
				receiver: self
				selector: #soundPreferencesOperations
				arguments: #()).
	^ result