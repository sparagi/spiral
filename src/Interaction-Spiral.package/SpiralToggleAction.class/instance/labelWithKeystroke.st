accessing
labelWithKeystroke

	| currentState toggleString |
	currentState := self state.
	toggleString := currentState
		ifNil: ['']
		ifNotNil: [currentState ifTrue: ['<yes>'] ifFalse: ['<no>']].
	^toggleString,  super labelWithKeystroke