operations
bookNavigationOperations
	"Answer a SpiralActions containing all book navigation  
	operations my instances support."
	| result |
	result := SpiralActions new.
	result
		add: (SpiralAction
				label: 'first page'
				buttonLabel: '<<'
				receiver: self
				selector: #firstPage
				arguments: #());
		
		add: (SpiralAction
				label: 'previous page'
				buttonLabel: '<'
				receiver: self
				selector: #previousPage
				arguments: #());
		
		add: (SpiralAction
				label: 'next page'
				buttonLabel: '>'
				receiver: self
				selector: #nextPage
				arguments: #());
		
		add: (SpiralAction
				label: 'last page'
				buttonLabel: '>>'
				receiver: self
				selector: #lastPage
				arguments: #()).
	"go to page..."
	"go to section..."
	"find..."
	^ result