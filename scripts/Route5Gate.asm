Route5Gate_Script:
	call EnableAutoTextBoxDrawing
	ret

Route5Gate_TextPointers:
	dw Route5GateText1

Route8GateText1:
	TX_FAR _SaffronGateText1
	db "@"
	
Route7GateText1:
	TX_FAR _SaffronGateText2
	db "@"
	
Route6GateText1:
	TX_FAR _SaffronGateText3
	db "@"
	
Route5GateText1:
	TX_FAR _SaffronGateText4
	db "@"

Route8GateText2:
Route7GateText2:
Route6GateText2:
Route5GateText2:
	TX_FAR _SaffronGateText_1dfe7
	db "@"

Route8GateText3:
Route7GateText3:
Route6GateText3:
Route5GateText3:
	TX_FAR _SaffronGateText_8aaa9
	TX_SFX_KEY_ITEM
	TX_FAR _SaffronGateText_1dff1
	db "@"

SaffronGateText_1dff6:
	TX_FAR _SaffronGateText_1dff6
	db "@"


