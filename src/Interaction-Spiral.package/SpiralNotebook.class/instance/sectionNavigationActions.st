event handling
sectionNavigationActions
	"Answer an OrderedCollection containing all section navigation  
	actions my instances support."
	| result |
	result := OrderedCollection new.
	pages
		do: [:page | | sectionAction |
			sectionAction := EditableAction label: page externalName receiver: self selector: #goToPage: arguments: {page}.
			sectionAction labelReceiver: page;
			getLabelSelector: #externalName setLabelSelector: #setNameTo:.
			result
				add: sectionAction].
	^ result