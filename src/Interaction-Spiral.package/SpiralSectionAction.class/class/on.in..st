instance creation
on: section in: notebook
	"Answer an instance of me configured for the given section and notebook."

	^self label: nil buttonLabel: section externalName receiver: notebook selector: #goToPage: arguments: {section}