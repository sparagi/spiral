accessing
allButtonCategories
	"Answer a SpiralActions representing message categories that 
	could potentially interest me, i.e. invoking the actions in my 
	answer will yield SpiralActions which contain the actions that 
	interest me."
	| result |
	result := SpiralActions new.
	notebook
		ifNotNil: [result
				add: (SpiralAction
						label: 'section navigation'
						receiver: notebook
						selector: #sectionNavigationOperations
						arguments: #())].
	^ result