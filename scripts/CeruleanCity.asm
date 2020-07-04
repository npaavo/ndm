CeruleanCity_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanCity_ScriptPointers
	ld a, [wCeruleanCityCurScript]
	jp CallFunctionInTable

CeruleanCityScript_1948c:
	xor a
	ld [wJoyIgnore], a
	ld [wCeruleanCityCurScript], a
	ld a, HS_CERULEAN_RIVAL
	ld [wMissableObjectIndex], a
	predef_jump HideObject

CeruleanCity_ScriptPointers:
	dw CeruleanCityScript0
	dw CeruleanCityScript1
	dw CeruleanCityScript2
	dw CeruleanCityScript3
	dw CeruleanCityScript4

CeruleanCityScript4:
	ret

CeruleanCityScript0:
	ret

CeruleanCityScript_1955d:
	ld a, 1
	ld [H_SPRITEINDEX], a
	xor a ; SPRITE_FACING_DOWN
	ld [hSpriteFacingDirection], a
	jp SetSpriteFacingDirectionAndDelay ; face object

CeruleanCityScript1:
	ret

CeruleanCityScript2:
	ret

CeruleanCityMovement3:
	db NPC_MOVEMENT_LEFT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $FF

CeruleanCityMovement4:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $FF

CeruleanCityScript3:
	ret

CeruleanCity_TextPointers:
	dw CeruleanCityText1
	dw CeruleanCityText2
	dw CeruleanCityText3
	dw CeruleanCityText4
	dw CeruleanCityText5
	dw CeruleanCityText6
	dw CeruleanCityText7
	dw CeruleanCityText8
	dw CeruleanCityText9
	dw CeruleanCityText10
	dw CeruleanCityText11
	dw CeruleanCityText12
	dw CeruleanCityText13
	dw MartSignText
	dw PokeCenterSignText
	dw CeruleanCityText16
	dw CeruleanCityText17
	dw CeruleanCityText18

CeruleanCityText1:
	TX_FAR _CeruleanCityText1
	db "@"

CeruleanCityText2:
	TX_FAR _CeruleanCityText2
	db "@"

CeruleanCityText3:
	TX_FAR _CeruleanCityText3
	db "@"

CeruleanCityText4:
	TX_FAR _CeruleanCityText4
	db "@"

CeruleanCityText5:
	TX_FAR _CeruleanCityText5
	db "@"

CeruleanCityText11:
CeruleanCityText6:
	TX_FAR _CeruleanCityText6
	db "@"

CeruleanCityText7:
	TX_FAR _CeruleanCityText7
	db "@"

CeruleanCityText8:
	TX_FAR _CeruleanCityText8
	db "@"

CeruleanCityText9:
	TX_FAR _CeruleanCityText9
	db "@"

CeruleanCityText10:
	TX_FAR _CeruleanCityText10
	db "@"

CeruleanCityText12:
	TX_FAR _CeruleanCityText12
	db "@"

CeruleanCityText13:
	TX_FAR _CeruleanCityText13
	db "@"

CeruleanCityText16:
	TX_FAR _CeruleanCityText16
	db "@"

CeruleanCityText17:
	TX_FAR _CeruleanCityText17
	db "@"
	
CeruleanCityText18:
	TX_FAR _CeruleanCityText18
	db "@"
