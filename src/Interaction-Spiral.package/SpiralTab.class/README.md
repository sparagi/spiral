My instances (tabs) provide a visible interface for performing actions.  They are usually submorphs of a SpiralSectionOperator (the operator). 

My instances have the following behavior:

- An instance of me keeps its name and its label (if it responds to contents:) identical.
- When my instance receives a red click, it performs its action.
- My instance highlights and unHighlights itself as directed by its operator.

My collaborators and I (see the class comment of SpiralNotebook) are a large-scale refactoring of BookMorph, its subclasses, and its collaborators.  I correspond to ReferenceMorph and TabMorph.

Instance variables:

isHighlighted	a Boolean indicating whether I am currently highlighted

Protocols my instances implement:

contained tab:
	isHighlighted
	highlight
	unHighlight
	referent
	
A notebook operator sends messages in the contained tab protocol to its tabs to manage their appearance as people navigate the notebook.