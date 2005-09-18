accessing
preferenceMorph
	"Answer a small UI element for changing my value, or nil if no such element is appropriate."
	
	| outerButton aButton str |
	aButton := UpdatingThreePhaseButtonMorph checkBox.
	aButton
		target: self;
		actionSelector: #trigger;
		getSelector: #state.
		
	str := StringMorph contents: label.
	str lock.

	outerButton := AlignmentMorph newRow height: 24.		
	outerButton
		beTransparent;
		beSticky;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		setNameTo: label;
		addMorph: aButton;
		addTransparentSpacerOfSize: (2 @ 0);
		addMorphBack: str;
		on: #mouseUp send: #trigger to: self.		
	help ifNotNil: [
		outerButton
			setBalloonText: help;
		setProperty: #balloonTarget toValue: aButton].

	^outerButton