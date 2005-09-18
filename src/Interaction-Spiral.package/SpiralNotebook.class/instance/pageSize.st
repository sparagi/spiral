accessing
pageSize
	"Answer the size of my pages."

	^(fullScreen and: [owner notNil])
		ifTrue: [owner extent]
		ifFalse: [pageSize ifNil: [self defaultPageSize]]