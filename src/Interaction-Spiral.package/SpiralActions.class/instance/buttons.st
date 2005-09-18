accessing
buttons
	"Answer buttons for my contents."

	| result |
	result := OrderedCollection new.
	self do: [:each | | button buttons |
		[
			button := each button.
			button ifNotNil: [result add: button]
		] on: MessageNotUnderstood do: [
			buttons := each buttons.
			result addAll: buttons]].
	^result