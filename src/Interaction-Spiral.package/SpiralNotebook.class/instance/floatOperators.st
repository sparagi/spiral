layout
floatOperators
	"Make my embedded operators float."

	| embeddedOperators |
	embeddedOperators := submorphs select: [:submorph | submorph isOperator].
	self operators do: [:operator |
		(embeddedOperators includes: operator)
			ifTrue: [operator float]]