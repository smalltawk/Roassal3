"
I am a popup decoration for instances of line Plots in RSChart by default but you can customize this popup decoration with differents shapebuilders, or popups
"
Class {
	#name : #RSPopupDecoration,
	#superclass : #RSChartDecoration,
	#instVars : [
		'popup'
	],
	#category : #'Roassal3-Chart-Popup'
}

{ #category : #accessing }
RSPopupDecoration >> chartPopupBuilder [
	^ self popup chartPopupBuilder
]

{ #category : #accessing }
RSPopupDecoration >> chartPopupBuilder: aRSAbstractChartPopupBuilder [
	self popup chartPopupBuilder: aRSAbstractChartPopupBuilder
]

{ #category : #accessing }
RSPopupDecoration >> createdShapes [
	^ #()
]

{ #category : #initialization }
RSPopupDecoration >> initialize [
	super initialize.
	popup := RSChartPopupDecoration new
		chartPopupBuilder: RSSimpleChartPopupBuilder new;
		markersPopupBuilder: RSSimpleMarkerPopupBuilder new;
		yourself.
]

{ #category : #accessing }
RSPopupDecoration >> popup [
	^ popup
]

{ #category : #accessing }
RSPopupDecoration >> popup: aRSPopup [
	popup := aRSPopup
]

{ #category : #rendering }
RSPopupDecoration >> renderIn: canvas [
	| box |
	box := chart spine.
	popup chart: chart.
	box addInteraction: popup.
]
