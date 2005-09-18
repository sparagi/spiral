operations
displayPreferencesOperations
	"Answer a SpiralActions containing all display preferences 
	operations my instances support."
	| result |
	result := SpiralActions new.
	self allButtonCategories
		do: [:action | 
			| operation | 
			operation := SpiralToggleAction
						label: 'show ' , action label , ' tools'
						receiver: self
						selector: #toggleVisibilityOfButtons:
						arguments: {action}.
			operation stateSelector: #visibilityOfButtons: arguments: {action}.
			result add: operation].
	^ result