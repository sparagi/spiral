comparing
> anotherTab
	"Answer whether my name is greater than anotherTab's name."

	^(anotherTab isMorph)
		and: [self externalName > anotherTab externalName]