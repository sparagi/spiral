comparing
>= anotherTab
	"Answer whether my name is greater than or equal to anotherTab's name."

	^(anotherTab isMorph)
		and: [self externalName >= anotherTab externalName]