accessing
referent: aMorph 
	"Set my referent to aMorph, which is assumed to be a page in  
	notebook."
	| nameString label |
	nameString := aMorph externalName.
	"Create a label if I don't have one already."
	self submorphs isEmpty
		ifTrue: [label := UpdatingStringMorph new.
			label target: aMorph;
				 contents: nameString;
				 useStringFormat;
				 putSelector: #setNameTo:;
				 stopStepping.
			self addMorph: label].
	self setNameTo: nameString.
	"Fix up objects I depend on, so I get name updates."
	referent
		ifNotNil: [referent removeDependent: self].
	aMorph
		ifNotNil: [aMorph addDependent: self].
	referent := aMorph