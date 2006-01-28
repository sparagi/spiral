event handling
interestingActions
	"Answer an OrderedCollection containing GenericActions
	objects which represent
	all action categories that are interesting for me."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericActions
				label: 'Book Navigation'
				receiver: self
				selector: #bookNavigationActions
				arguments: #());
		
		add: (GenericActions
				label: 'Book Editing'
				receiver: self
				selector: #bookEditingActions
				arguments: #());
		
		add: (GenericActions
				label: 'Display Preferences'
				receiver: self
				selector: #displayPreferencesActions
				arguments: #());
		
		add: (GenericActions
				label: 'Sound Preferences'
				receiver: self
				selector: #soundPreferencesActions
				arguments: #()).
	^ result