accessing
toggleFullScreen
	"Change whether I am full screen."

	fullScreen
		ifTrue: [self exitFullScreen]
		ifFalse: [self enterFullScreen]