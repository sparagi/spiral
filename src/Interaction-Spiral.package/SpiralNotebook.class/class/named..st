instance creation
named: aString
	"Answer a new instance of me, with aString as my name."

	^self new
		setNameTo: aString;
		yourself