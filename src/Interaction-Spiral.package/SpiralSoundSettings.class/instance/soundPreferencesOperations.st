operations
soundPreferencesOperations
	"Answer a SpiralActions containing all sound preferences 
	operations my instances support."
	| result operation |
	result := SpiralActions new.
	"[volume]"
	operation := SpiralToggleAction
				label: 'page transitions'
				buttonLabel: 'P'
				receiver: self
				selector: #togglePageTransitions
				arguments: #().
	operation stateSelector: #pageTransitions.
	result add: operation.
	operation := SpiralToggleAction
				label: 'page accompaniment'
				receiver: self
				selector: #togglePageAccompaniment
				arguments: #().
	operation stateSelector: #pageAccompaniment.
	result add: operation.
	^ result