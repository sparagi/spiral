event handling
bookNavigationActions
	"Answer an OrderedCollection containing all book navigation 
	actions my instances support."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericAction
				label: 'First Page'
				receiver: self
				selector: #firstPage
				arguments: #());
		
		add: (GenericAction
				label: 'Previous Page'
				receiver: self
				selector: #previousPage
				arguments: #());
		
		add: (GenericAction
				label: 'Next Page'
				receiver: self
				selector: #nextPage
				arguments: #());
		
		add: (GenericAction
				label: 'Last Page'
				receiver: self
				selector: #lastPage
				arguments: #()).
	"go to page..."
	"go to section..."
	"find..."
	^ result