initialization
addSettingsSection
	"Add a section which displays my settings."
	| action |
	action := GenericActions
				label: 'settings'
				receiver: self
				selector: #preferencesActions
				arguments: #().
	self
		addPage: (self defaultSettingsInterfaceClass wrap: action) control