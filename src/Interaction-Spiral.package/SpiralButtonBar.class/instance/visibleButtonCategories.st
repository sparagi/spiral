accessing
visibleButtonCategories
	"Answer an OrderedCollection of GenericActions representing message categories that should currently be visible.  Invoking the actions in my answer will yield OrderedCollections which contain GenericActions for the actions that interest me."
	
	(visibleButtonCategories isNil or: [visibleButtonCategories isEmpty]) ifTrue: [
		visibleButtonCategories := self allButtonActions.
		visibleButtonCategories do: [:action | self registerForEvents: action]].
	^visibleButtonCategories
