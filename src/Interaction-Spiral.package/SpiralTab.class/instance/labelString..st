accessing
labelString: aString
	"Set my label's contents to the given string."

	| label |
	submorphs ifNotEmpty: [
		label := self submorphs first].
	(label respondsTo: #contents:)
		ifFalse: [
			self removeAllMorphs.
			label := StringMorph new.
			label lock.
			self addMorph: label].
	self setNameTo: aString
