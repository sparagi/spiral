accessing
arguments: aCollection
	"Set arguments to aCollection.  When I am activated, I will send actionSelector to target, with the given arguments."

	aCollection
		ifNil: [arguments := nil]
		ifNotNil: [arguments := aCollection asArray copy]