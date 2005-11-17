initialization
intializeVisibleButtonCategories
	"Initialize my visibleButtonCategories."
	
	(visibleButtonCategories isNil or: [visibleButtonCategories isEmpty]) ifTrue: [^self].
	visibleButtonCategories do: [:action | self unregisterForEvents: action].
	visibleButtonCategories := nil.