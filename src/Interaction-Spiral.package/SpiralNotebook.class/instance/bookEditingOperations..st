operations
bookEditingOperations: aPage 
	"Answer a SpiralActions containing all book editing operations  
	my instances support, relative to the given arguments."
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
						buttonLabel: nil
						receiver: self
						selector: #removeSpecificPage:
						arguments: {aPage})].
	operation := SpiralToggleAction
				label: 'read only'
				buttonLabel: nil
				receiver: self
				selector: #toggleReadOnly
				arguments: #().
	operation stateSelector: #readOnly.
	result add: operation.
	^ result