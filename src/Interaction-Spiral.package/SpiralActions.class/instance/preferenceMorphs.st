accessing
preferenceMorphs
	"Answer preference-like UI elements for my contents."

	| result |
	result := OrderedCollection new.
	self do: [:each | 
		[ | preference |
			preference := each preferenceMorph.
			preference ifNotNil: [result add: preference]
		] on: MessageNotUnderstood do: [ | preferences |
			preferences := each preferenceMorphs.
			result addAll: preferences]].
	^result