accessing
buttonCategories
	"Answer a SpiralActions representing message categories that interest me, i.e. invoking the actions in my answer will yield SpiralActions which contain the actions that interest me."
	
	(buttonCategories isNil or: [buttonCategories isEmpty]) ifTrue: [
		buttonCategories := self allButtonCategories].
	^buttonCategories
