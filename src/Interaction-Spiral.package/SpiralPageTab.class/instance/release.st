event handling
release
	"Remove links to me which might prevent me from being garbage collected."
	
	super release.
	referent ifNotNil: [
		referent removeDependent: self].