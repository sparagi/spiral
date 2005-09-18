initialization
initialize
	"Set my initial state."
	
	super initialize.
	SpiralOperationCategories
		at: #BookNavigationCategory put: #bookNavigationOperations;
		at: #BookEditingCategory put: #bookEditingOperations;
		at: #ParameterizedBookEditingCategory put: #bookEditingOperations:;
		at: #DisplayPreferencesCategory put: #displayPreferencesOperations;
		at: #SoundPreferencesCategory put: #soundPreferencesOperations