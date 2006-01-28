event handling
allButtonActions
	| result |
	result := OrderedCollection new.
	notebook
		ifNotNil: [result
				add: (GenericActions
						label: 'Section Navigation'
						receiver: notebook
						selector: #sectionNavigationActions
						arguments: #())].
	^ result