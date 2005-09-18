accessing
pageNamed: aString
	"Answer my page with the given name."
	
	^pages detect: [:p | p knownName = aString] ifNone: [nil]
