accessing
operators
	"Answer a collection of operators which refer to me."
	
	^self dependents select: [:d | d isMorph and: [d isOperator]]