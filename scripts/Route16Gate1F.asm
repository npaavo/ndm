Route16Gate1F_Script:
	ld hl, wd732
	res 5, [hl]
	call EnableAutoTextBoxDrawing
	ld a, [wRoute16Gate1FCurScript]
	ld hl, Route16Gate1F_ScriptPointers
	jp CallFunctionInTable

Route16Gate1F_ScriptPointers:
	dw Route16GateScript0
	dw Route16GateScript1
	dw Route16GateScript2
	dw Route16GateScript3

Route16GateScript0:
	ret

CoordsData_49714:
	db $07,$04
	db $08,$04
	db $09,$04
	db $0A,$04
	db $FF

Route16GateScript1:
	ret

Route16GateScript2:
	ret

Route16GateScript3:
	ret


Route16Gate1F_TextPointers:
	dw Route16GateText1
	dw Route16GateText2
	dw Route16GateText3

Route16GateText1:
	db "@"

Route16GateText3:
	db "@"

Route16GateText2:
	db "@"
