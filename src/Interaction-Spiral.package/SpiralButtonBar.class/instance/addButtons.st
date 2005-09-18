initialization
addButtons
	"Add my submorphs."
	self buttonCategories
		do: [:categoryAction | 
			| buttons | 
			buttons := categoryAction value buttons.
			buttonCache at: categoryAction put: buttons.
			buttons size > 0
				ifTrue: [| spacer | 
					spacer := self spacer.
					spacer
						ifNotNil: [buttonRow addMorphBack: spacer].
					buttonRow addAllMorphs: buttons]]