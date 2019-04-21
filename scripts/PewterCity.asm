PewterCity_Script:
	call EnableAutoTextBoxDrawing
	
	;this prevents the gym from crashing, I am so sorry
	xor a
	ld [wPewterGymCurScript], a
	
	ld hl, PewterCity_ScriptPointers
	ld a, [wPewterCityCurScript]
	jp CallFunctionInTable

PewterCity_ScriptPointers:
	dw PewterCityScript0

PewterCityScript0:
	ret

PewterCity_TextPointers:
	dw PewterCityText1
	dw PewterCityText2
	dw PewterCityText3
	dw PewterCityText4
	dw PewterCityText5
	dw PewterCityText6
	dw PewterCityText7
	dw MartSignText
	dw PokeCenterSignText
	dw PewterCityText10
	dw PewterCityText11

PewterCityText1:
	TX_FAR _PewterCityText1
	db "@"
PewterCityText2:
	TX_FAR _PewterCityText2
	db "@"
PewterCityText3:
	TX_FAR _PewterCityText3
	db "@"
PewterCityText4:
	TX_FAR _PewterCityText4
	db "@"
PewterCityText5:
	TX_FAR _PewterCityText5
	db "@"
PewterCityText6:
	TX_FAR _PewterCityText6
	db "@"
PewterCityText7:
	TX_FAR _PewterCityText7
	db "@"

PewterCityText10:
	TX_FAR _PewterCityText10
	db "@"
PewterCityText11:
	TX_FAR _PewterCityText11
	db "@"
