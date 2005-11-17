layout
enterFullScreen
	"Enter full screen mode."

	fullScreen ifFalse: [
		self
			saveLayout;
			floatOperators;
			layoutInset: 0;
			borderWidth: 0;
			align: self topLeft with: owner topLeft;
			extent: owner extent;
			comeToFront.
		fullScreen := true].
	self adjustCurrentPageSize.
