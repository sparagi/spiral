event handling
allButtonActions
	| result |
	result := OrderedCollection new.
	notebook
		ifNotNil: [result
				add: (GenericActions
						label: 'section navigation'
						receiver: notebook
						selector: #sectionNavigationActions
						arguments: #())].
	^ result