initialization
initialize
	"Set my initial state."
	
	super initialize.
	
	SpiralOperationCategories
		at: #BookNavigationCategory ifAbsentPut: #bookNavigationOperations;
		at: #BookEditingCategory ifAbsentPut: #bookEditingOperations;
		at: #DisplayPreferencesCategory ifAbsentPut: #displayPreferencesOperations;
		at: #SectionNavigationCategory ifAbsentPut: #sectionNavigationOperations;
		at: #SoundPreferencesCategory ifAbsentPut: #soundPreferencesOperations.
