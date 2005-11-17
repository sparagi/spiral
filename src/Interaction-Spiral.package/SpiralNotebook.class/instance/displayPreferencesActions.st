event handling
displayPreferencesActions
	"Answer an OrderedCollection containing all display preferences  
	actions my instances support."
	| result operation |
	result := OrderedCollection new.
	operation := ToggleAction
				label: 'full screen'
				receiver: self
				selector: #toggleFullScreen
				arguments: #().
	operation getStateSelector: #fullScreen.
	result add: operation.
	^ result