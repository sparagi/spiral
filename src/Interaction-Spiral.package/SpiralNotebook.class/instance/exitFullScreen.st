layout
exitFullScreen
	"Exit full screen mode."

	fullScreen ifTrue: [
		self restoreLayout.
		fullScreen := false].
	self adjustCurrentPageSize.