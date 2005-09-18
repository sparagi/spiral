comparing
<= anotherTab
	"Answer whether my name is less than or equal to anotherTab's name."

	^(anotherTab isMorph)
		and: [self externalName <= anotherTab externalName]