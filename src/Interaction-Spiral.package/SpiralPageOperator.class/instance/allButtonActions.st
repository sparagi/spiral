event handling
allButtonActions
	"Answer the values of operation categories that interest me."
	| result |
	result := OrderedCollection new.
	notebook
		ifNotNil: [| interestingOperationCategories | 
			interestingOperationCategories := {#bookNavigationActions. #bookEditingActions. #displayPreferencesActions}.
			notebook interestingActions
				do: [:action | (interestingOperationCategories includes: action selector)
						ifTrue: [result add: action]]].
	^ result