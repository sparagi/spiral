operations
interestingOperationCategories
	"Answer a SpiralActions containing all operation categories  
	that are interesting for me."
	| result |
	result := SpiralActions new.
	result
		add: (SpiralAction
				label: 'book navigation'
				receiver: self
				selector: #bookNavigationOperations
				arguments: #());
		
		add: (SpiralAction
				label: 'book editing'
				receiver: self
				selector: #bookEditingOperations
				arguments: #());
		
		add: (SpiralAction
				label: 'display preferences'
				receiver: self
				selector: #displayPreferencesOperations
				arguments: #());
		
		add: (SpiralAction
				label: 'sound preferences'
				receiver: self
				selector: #soundPreferencesOperations
				arguments: #()).
	^ result