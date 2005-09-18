comparing
< anotherTab
	"Answer whether my name is less than anotherTab's name."

	^(anotherTab isMorph)
		and: [self externalName < anotherTab externalName]