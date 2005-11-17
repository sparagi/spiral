event handling
interestingActions
	"Answer an OrderedCollection containing GenericActions objects which represent
	all action categories that are interesting for me."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericActions
				label: 'book navigation'
				receiver: self
				selector: #bookNavigationActions
				arguments: #());
		
		add: (GenericActions
				label: 'book editing'
				receiver: self
				selector: #bookEditingActions
				arguments: #());
		
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