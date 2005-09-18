instance creation
on: target action: actionSelector withArguments: arguments
	"Create a new instance of me with the indicated target, actionSelector and arguments."
	
	^self new
		target: target;
		actionSelector: actionSelector;
		arguments: arguments;
		yourself