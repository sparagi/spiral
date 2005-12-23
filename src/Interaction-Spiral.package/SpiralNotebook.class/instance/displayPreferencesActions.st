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
	operation description: 'Turn this off, then on to fix resizing problems'.
	result add: operation.
	^ result