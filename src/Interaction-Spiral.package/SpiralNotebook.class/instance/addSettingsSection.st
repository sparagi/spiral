initialization
addSettingsSection
	"Add a section which displays my settings."
	| action section |
	action := GenericActions
				label: 'Settings'
				receiver: self
				selector: #preferencesActions
				arguments: #().
	section := (self defaultSettingsInterfaceClass wrap: action) control.
	section color: self color;
		 goToPageNumber: 1.
	self addPage: section