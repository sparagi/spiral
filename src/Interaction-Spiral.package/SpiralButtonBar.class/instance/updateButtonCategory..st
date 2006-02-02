event handling
updateButtonCategory: categoryAction 
	"Add and remove buttons in the given category."
	| oldButtons newButtons spacer buttonsToAdd buttonsToRemove |
	oldButtons := buttonCache at: categoryAction.
	newButtons := (MorphicButtonAction wrapAll: categoryAction value)
				collect: [:interfaceAction | interfaceAction control].
	spacer := self spacer.
	oldButtons = newButtons
		ifTrue: [^ self].
	self findButtonIndicesForCategory: categoryAction.
	buttonsToRemove := oldButtons difference: newButtons.
	buttonsToRemove
		ifNotEmpty: [buttonRow removeAllMorphsIn: buttonsToRemove.
			(buttonsToRemove = oldButtons
					and: [self spacer ~= nil])
				ifTrue: [buttonRow
						removeMorph: (buttonRow submorphs at: categoryStartIndex)]].
	buttonsToAdd := newButtons difference: oldButtons.
	buttonsToAdd
		ifNotEmpty: [categoryEndIndex := newButtons
						inject: categoryStartIndex
						into: [:i :each | 
							| index | 
							index := i.
							(buttonsToAdd includes: each)
								ifTrue: [(index = categoryStartIndex
											and: [categoryEndIndex = categoryStartIndex])
										ifTrue: [spacer
												ifNotNil: [buttonRow addMorph: spacer asElementNumber: index.
													index := index + 1]].
									buttonRow addMorph: each asElementNumber: index]
								ifFalse: [each
											= (buttonRow submorphs at: index)
										ifFalse: [self error: 'missing morph']].
							index + 1]].
	buttonCache
		at: categoryAction
		put: (newButtons
				ifEmpty: [#()]
				ifNotEmpty: [| start end | 
					start := spacer
								ifNil: [categoryStartIndex]
								ifNotNil: [categoryStartIndex + 1].
					end := start + newButtons size - 1.
					buttonRow submorphs copyFrom: start to: end])