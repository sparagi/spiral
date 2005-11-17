event handling
soundPreferencesActions
	"Answer an OrderedCollection containing all sound preferences  
	operations my instances support."
	| result |
	result := soundSettings soundPreferencesActions.
	^ result ifNil: [OrderedCollection new]