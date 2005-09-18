accessing
string: aString
	(model notNil and: [putStringSelector notNil])
		ifTrue: [model perform: putStringSelector with: aString]
		ifFalse: [super string: aString]