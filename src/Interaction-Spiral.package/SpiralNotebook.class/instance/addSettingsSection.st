initialization
addSettingsSection
	"Add a section which displays my settings."
	| section |
	section := SpiralNotebook new.
	self preferencesOperationCategories
		do: [:action | 
			| page preferences | 
			preferences := action value preferenceMorphs.
			preferences
				ifNotNil: [section addPage.
					page := section currentPage.
					page setNameTo: action label;
						 changeTableLayout;
						 enableDrop: false.
					preferences
						do: [:preference | page addMorphBack: preference]]].
	section layoutInset: 0;
		 addSectionOperator;
		 firstPage;
		 setNameTo: 'settings';
		 enableDrop: false.
	self addPage: section