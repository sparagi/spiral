event handling
redButtonAction
	"Send my actionSelector to my target object with its arguments."

	(target notNil and: [actionSelector notNil]) 
		ifTrue: 
			[Cursor normal 
				showWhile: [
					arguments
						ifNil: [target perform: actionSelector]
						ifNotNil: [target perform: actionSelector withArguments: arguments]]]