operations
displayPreferencesOperations
	"Answer a SpiralActions containing all display preferences  
	operations my instances support."
	| result operation |
	result := SpiralActions new.
	operation := SpiralToggleAction
				label: 'full screen'
				buttonLabel: '*'
				receiver: self
				selector: #toggleFullScreen
				arguments: #().
	operation stateSelector: #fullScreen.
	result add: operation.
	^ result