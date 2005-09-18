My instances (tabs) provide a visible interface which corresponds to a page/section of a notebook.  They can be used to perform navigation or editing operations on the section they refer to (the referent).   The referent is typically also a notebook (nested inside the parent notebook as one of the parent's pages), but can be any morph.  

My instances help implement the following behavior:

- Editing the label of the tab edits the name of the referent. 
- When the tab receives a red click, it tells the notebook to display the referent.
- When someone navigates to the referent, either via a tab or via some other means, the notebook tells the operator the current page, and the operator tells its tabs to highlight and unHighlight themselves accordingly. 
- When the tab receives a yellow click, it combines the notebook's page menu for the referent and the referent's book menu.

My collaborators and I (see the class comment of SpiralNotebook) are a large-scale refactoring of BookMorph, its subclasses, and its collaborators.  I correspond to ReferenceMorph and some uses of its predecessor, TabMorph.

Instance variables:

referent	the section; can be any Morph, but responding to the notebook menu construction protocol (see the SpiralNotebook class comment) is helpful
notebook	the notebook in which referent is a page; should respond to the notebook menu construction protocol
