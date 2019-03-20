Route18Gate1F_Script:
	ld hl, wd732
	res 5, [hl]
	call EnableAutoTextBoxDrawing
	ld a, [wRoute18Gate1FCurScript]
	ld hl, Route18Gate1F_ScriptPointers
	jp CallFunctionInTable

Route18Gate1F_ScriptPointers:
	dw Route18GateScript0
	dw Route18GateScript1
	dw Route18GateScript2
	dw Route18GateScript3

Route18GateScript0:
	ret

CoordsData_498cc:
	db $03,$04
	db $04,$04
	db $05,$04
	db $06,$04
	db $FF

Route18GateScript1:
	ret

Route18GateScript2:
	ret

Route18GateScript3:
	ret

Route18Gate1F_TextPointers:
	dw Route18GateText1
	dw Route18GateText2

Route18GateText1:
	db "@"

Route18GateText2:
	db "@"
