instance creation
on: aNotebook
	"Create a new instance of myself to operate aNotebook.  Do not populate myself with tabs."
	
	^self new
		notebook: aNotebook;
		yourself
	
