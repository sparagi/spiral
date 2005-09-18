operations
bookEditingOperations
	"Answer a SpiralActions containing all book editing operations  
	my instances support."
	| result operation |
	result := SpiralActions new.
	readOnly
		ifFalse: [result
				add: (SpiralAction
						label: 'add page'
						buttonLabel: '+'
						receiver: self
						selector: #addPage
						arguments: #());
				
				add: (SpiralAction
						label: 'remove page'
						buttonLabel: '-'
						receiver: self
						selector: #removePage
						arguments: #())].
	operation := SpiralToggleAction
				label: 'read only'
				buttonLabel: nil
				receiver: self
				selector: #toggleReadOnly
				arguments: #().
	operation stateSelector: #readOnly.
	result add: operation.
	^ result