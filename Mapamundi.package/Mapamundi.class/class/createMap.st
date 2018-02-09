as yet unclassified
createMap
|composite view|
 composite := GLMCompositePresentation new.
 view := RTView new.
 composite roassal2 initializeView: [ view ].
 RTSVGPath countries
	 do: [ :country |
		 | elem |
		 elem := (RTSVGPath new
			 path: (RTSVGPath perform: country);
			 fillColor: Color random;
			 scale: 1) element model: country asString.
		 elem @ RTPopup.
		 elem @ RTColourizable.
		 view add: elem ].
 composite openOn: 1 .
