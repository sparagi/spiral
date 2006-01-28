event handling
displayPreferencesActions
	"Answer an OrderedCollection containing all display 
	preferences actions my instances support."
	| result |
	result := OrderedCollection new.
	self allButtonActions
		do: [:action | 
			| operation | 
			operation := ToggleAction
						label: 'Show ' , action label , ' Tools'
						receiver: self
						selector: #toggleVisibilityOfButtons:
						arguments: {action}.
			operation getStateSelector: #visibilityOfButtons: arguments: {action}.
			result add: operation].
	^ result