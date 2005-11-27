accessing
operatorOffset
	"Answer an appropriate offset for my operator."

	| operatorExtent |
	operators ifEmpty: [^0 @ 0].
	operatorExtent := operators only extent.
	operatorExtent := operatorExtent x > operatorExtent y 
				ifTrue: [0 @ operatorExtent y]
				ifFalse: [operatorExtent x @ 0].
	^operatorExtent