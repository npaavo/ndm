BluesHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, BluesHouse_ScriptPointers
	ld a, [wBluesHouseCurScript]
	jp CallFunctionInTable

BluesHouse_ScriptPointers:
	dw BluesHouseScript0
	dw BluesHouseScript1

BluesHouseScript0:
	ret

BluesHouseScript1:
	ret

BluesHouse_TextPointers:
	db "@"
