instance creation
forPage: aMorph inBook: aNotebook
	"Create a new instance of me, which will refer to aMorph in aNotebook."
	^ self new
		referent: aMorph;
		notebook: aNotebook;
		yourself