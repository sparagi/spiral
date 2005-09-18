accessing
allButtonCategories
	"Answer the values of operation categories that interest me."
	| result |
	result := SpiralActions new.
	notebook
		ifNotNil: [| interestingOperationCategories | 
			interestingOperationCategories := {#bookNavigationOperations. #bookEditingOperations. #displayPreferencesOperations}.
			notebook interestingOperationCategories
				do: [:action | (interestingOperationCategories includes: action selector)
						ifTrue: [result add: action]]].
	^ result