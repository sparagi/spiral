event handling
update: aSymbol 
	"Something about my referent has changed. If it was the name, 
	update myself."
	aSymbol = #name
		ifTrue: [self setNameTo: referent externalName]