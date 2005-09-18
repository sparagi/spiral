accessing
removeAllNonPageMorphs
	"Remove all morphs which are not pages."

	submorphs copy do: [:s |
		(pages includes: s) ifFalse: [self removeMorph: s]]