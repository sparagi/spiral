accessing
buttonLabelMorph
	"Answer a button label for the operation I represent."
	(buttonIcon isNil
			and: [buttonLabel isNil])
		ifTrue: [^ nil].
	^ buttonIcon
		ifNil: [super buttonLabelMorph]
		ifNotNil: [SketchMorph withForm: buttonIcon]