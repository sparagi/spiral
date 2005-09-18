Instances of me provide a visible interface for the sections (and sometimes operations) of an associated notebook.  My instances contain Morphs which respond to the contained tab protocol (tabs; see the class comment of SpiralTab for a description of this protocol).  An instance of me is sometimes, but not always, a submorph of the notebook.

I help implement the following behavior:

- An empty section operator can populate itself with tabs based on the current contents of the notebook.
- When someone adds a page to the notebook, the section operator can automatically add a tab.
- When someone navigates to a page (section) in the notebook, the notebook tells the operator the current page (section), and the operator tells its tabs to highlight and unHighlight themselves accordingly.
- The real tabs (i.e. those with non-nil referents) in a section operator are always in the same order as their corresponding pages in the notebook.
- Changing the order of real tabs in a section operator (which is only possible if the notebook is not read only) changes the order of their corresponding pages in the notebook.
- An operator places pseudo tabs (i.e. those with nil referents) in one of the following locations, as requested by the tab:
	the beginning
	the end
	before or after some other tab
- If the tabs occupy more width than the section operator does, the section operator will automatically scroll to allow access to all tabs.
- Yellow clicking on an empty part of the section operator will bring up the book menu for the notebook.
- A tab can be removed without removing the corresponding section of the notebook.

My collaborators and I (see the class comment of SpiralNotebook) are a large-scale refactoring of BookMorph, its subclasses, and its collaborators.   I correspond to IndexTabs.

Instance variables:

notebook

Protocols:

operator:

