initialization
intializeVisibleButtonCategories
	"Initialize my visibleButtonCategories."
	visibleButtonCategories isNil
		ifTrue: [^ self].
	visibleButtonCategories
		do: [:action | self unregisterForEvents: action].
	visibleButtonCategories := nil