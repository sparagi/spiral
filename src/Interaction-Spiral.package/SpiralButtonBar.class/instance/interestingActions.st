event handling
interestingActions
	"Answer an OrderedCollection containing GenericActions objects which represent all action categories that are interesting for me."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericActions
				label: 'display preferences'
				receiver: self
				selector: #displayPreferencesActions
				arguments: #()).
	^ result