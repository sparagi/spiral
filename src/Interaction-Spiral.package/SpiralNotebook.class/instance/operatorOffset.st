accessing
operatorOffset
	"Answer an appropriate offset for my operator."
	| operators operatorExtent |
	operators := self operators.
	operators size = 0 ifTrue: [^0@0].
	operatorExtent := operators only extent.
	operatorExtent x > operatorExtent y
		ifTrue: [
			operatorExtent := 0@(operatorExtent y)]
		ifFalse: [
			operatorExtent := (operatorExtent x)@0].
	^ operatorExtent