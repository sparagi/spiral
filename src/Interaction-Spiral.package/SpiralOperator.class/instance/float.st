event handling
float
	"Glide gracefully over the top of the other morphs (typically, my notebook, which is in fullScreen mode).  I assume someone has already called saveLayout on me."

	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		borderWidth: 2;
		position: 8@8;
		setProperty: #morphicLayerNumber toValue: self floatingLayer;
		openInWorld