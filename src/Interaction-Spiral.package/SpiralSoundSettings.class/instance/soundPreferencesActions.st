event handling
soundPreferencesActions
	"Answer an OrderedCollection containing all sound
	preferences 
	actions my instances support."
	| result operation |
	result := OrderedCollection new.
	"[volume]"
	operation := ToggleAction
				label: 'Page Transitions'
				receiver: self
				selector: #togglePageTransitions
				arguments: #().
	operation getStateSelector: #pageTransitions.
	result add: operation.
	operation := ToggleAction
				label: 'Page Accompaniment'
				receiver: self
				selector: #togglePageAccompaniment
				arguments: #().
	operation getStateSelector: #pageAccompaniment.
	result add: operation.
	^ result