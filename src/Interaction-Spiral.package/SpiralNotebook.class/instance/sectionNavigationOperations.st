operations
sectionNavigationOperations
	"Answer a SpiralActions containing all section navigation  
	operations my instances support."
	| result |
	result := SpiralActions new.
	pages
		do: [:page | result
				add: (SpiralSectionAction on: page in: self)].
	^ result