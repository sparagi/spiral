initialization
addButtons
	"Add my submorphs."

	self visibleButtonCategories do: 
			[:categoryAction | 
			| buttons |
			buttons := (MorphicButtonAction wrapAll: categoryAction value) collect: [:interfaceAction |
				interfaceAction control].
			buttonCache at: categoryAction put: buttons.
			buttons ifNotEmpty: [| spacer |
					spacer := self spacer.
					spacer ifNotNil: [buttonRow addMorphBack: spacer].
					buttonRow addAllMorphs: buttons]]