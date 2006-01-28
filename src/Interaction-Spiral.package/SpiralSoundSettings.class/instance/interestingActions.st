event handling
interestingActions
	"Answer an OrderedCollection containing all action categories 
	that are interesting for me."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericActions
				label: 'Sound Preferences'
				receiver: self
				selector: #soundPreferencesActions
				arguments: #()).
	^ result