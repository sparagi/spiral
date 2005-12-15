event handling
displayPreferencesActions
	"Answer an OrderedCollection containing all display preferences  
	actions my instances support."
	| result operation |
	result := OrderedCollection new.
	operation := ToggleAction
				label: 'fill entire window'
				receiver: self
				selector: #toggleFullScreen
				arguments: #().
	operation getStateSelector: #fullScreen.
	operation description: 'Uncheck and then recheck this box to fix resizing problems'.
	result add: operation.
	operation := ToggleAction
				label: 'balloon help'
				receiver: Preferences
				selector: #togglePreference:
				arguments: #(#balloonHelpEnabled).
	operation getStateSelector: #balloonHelpEnabled.
	result add: operation.
	^ result