event handling
bookEditingActions
	"Answer an OrderedCollection containing all book editing
	actions 
	my instances support."
	| result operation |
	result := OrderedCollection new.
	readOnly
		ifFalse: [result
				add: (GenericAction
						label: 'Add Page'
						receiver: self
						selector: #addPage
						arguments: #());
				
				add: (GenericAction
						label: 'Remove Page'
						receiver: self
						selector: #removePage
						arguments: #())].
	operation := ToggleAction
				label: 'Read Only'
				receiver: self
				selector: #toggleReadOnly
				arguments: #().
	operation getStateSelector: #readOnly.
	result add: operation.
	^ result