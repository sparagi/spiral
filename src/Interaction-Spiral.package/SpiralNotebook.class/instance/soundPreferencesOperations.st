operations
soundPreferencesOperations
	"Answer a SpiralActions containing all sound preferences  
	operations my instances support."
	| result |
	result := SpiralActions new.
	soundSettings
		ifNotNil: [| subresult | 
			subresult := soundSettings soundPreferencesOperations.
			subresult label: 'sound preferences'.
			result add: subresult].
	^ result