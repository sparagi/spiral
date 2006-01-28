event handling
preferencesActions
	"Answer an OrderedCollection containing all preferences
	categories 
	that are interesting for me."
	| result |
	result := OrderedCollection new.
	result
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