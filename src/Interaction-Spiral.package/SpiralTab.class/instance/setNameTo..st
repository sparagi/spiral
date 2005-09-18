accessing
setNameTo: aString 
	"Set my name, and the string on my label if any, to aString."
	
	super setNameTo: aString.
	(submorphs notEmpty and: [submorphs first respondsTo: #contents:]) 
		ifTrue: [submorphs first contents: aString]