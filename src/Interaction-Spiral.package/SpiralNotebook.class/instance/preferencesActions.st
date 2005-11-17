event handling
preferencesActions
	"Answer an OrderedCollection containing all preferences categories  
	that are interesting for me."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericActions
				label: 'display preferences'
				receiver: self
				selector: #displayPreferencesActions
				arguments: #());
		
		add: (GenericActions
				label: 'sound preferences'
				receiver: self
				selector: #soundPreferencesActions
				arguments: #()).
	^ result