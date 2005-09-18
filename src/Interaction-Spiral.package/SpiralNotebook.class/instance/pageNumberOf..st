accessing
pageNumberOf: aMorph
	"Answer the page number of aMorph, which should be one of my pages."
	
	"Modified so that if the page IS in memory, other pages don't have to be brought in.  (This method may wrongly say a page is not here if pages has a tombstone (MorphObjectOut) and that tombstone would resolve to an object already in this image.  This is an unlikely case, and callers just have to tolerate it.)"

	^ pages identityIndexOf: aMorph ifAbsent: [0]
