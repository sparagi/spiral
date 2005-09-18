accessing
button
	"Answer a button for invoking me, or nil if no such button is appropriate."

	| result |
	result := super button.
	(result notNil and: [self yellowMenuCategories notEmpty]) ifTrue: [
		result getMenuSelector: #yellowButtonMenu:].
	^result