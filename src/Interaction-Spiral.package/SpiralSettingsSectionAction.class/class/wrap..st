instance creation
wrap: genericAction
	"Answer a new instance of me (or perhaps MorphicPreferenceAction), initialized from the given GenericAction."
	
	^genericAction answersActions 
		ifTrue: [super wrap: genericAction]
		ifFalse: [MorphicPreferenceAction wrap: genericAction]