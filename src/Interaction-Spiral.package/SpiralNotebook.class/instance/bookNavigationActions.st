event handling
bookNavigationActions
	"Answer an OrderedCollection containing all book navigation  
	actions my instances support."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericAction
				label: 'first page'
				receiver: self
				selector: #firstPage
				arguments: #());
		
		add: (GenericAction
				label: 'previous page'
				receiver: self
				selector: #previousPage
				arguments: #());
		
		add: (GenericAction
				label: 'next page'
				receiver: self
				selector: #nextPage
				arguments: #());
		
		add: (GenericAction
				label: 'last page'
				receiver: self
				selector: #lastPage
				arguments: #()).
	"go to page..."
	"go to section..."
	"find..."
	^ result