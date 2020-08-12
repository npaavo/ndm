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
	TX_ASM	
	CheckEvent EVENT_GOT_HM03
	jr nz, .RepeatText
	ld a, 30 ; pokemon needed
	ld [hOaksAideRequirement], a
	ld a, SURFBOARD ; oak's aide reward
	ld [hOaksAideRewardItem], a
	ld [wd11e], a
	call GetItemName
	ld hl, wcd6d
	ld de, wOaksAideRewardItemName
	ld bc, ITEM_NAME_LENGTH
	call CopyData
	
	
	ld hl, CeladonGateText1Start
	call PrintText
	
	ld hl, wPokedexSeen
	ld b, wPokedexSeenEnd - wPokedexSeen
	call CountSetBits
	ld a, [wNumSetBits]
	ldh [hOaksAideNumMonsOwned], a
	ld b, a
	ldh a, [hOaksAideRequirement]
	cp b
	jr z, .giveItem
	jr nc, .notEnoughOwnedMons
.giveItem
	ldh a, [hOaksAideRewardItem]
	ld b, a
	ld c, 1
	call GiveItem
	jr nc, .bagFull	
	ld hl, CeladonGateTextGiveBoard
	call PrintText
	ld a, 1
	jr .done
.bagFull
.notEnoughOwnedMons
	ld hl, CeladonGateTextNotEnough
	call PrintText
	jr .finish
	xor a
.done
	ldh [hOaksAideResult], a		
	ld a, [hOaksAideResult]
	cp $1
	jr nz, .finish
	SetEvent EVENT_GOT_HM03	
	ld hl, CeladonGateGotBoardMessage
	call PrintText
	jr .finish
.RepeatText
	ld hl, CeladonGateTextRetalk
	call PrintText
.finish
	jp TextScriptEnd

CeladonGateText1Start
	TX_FAR _CeladonGateText1Start
	db "@"
	
CeladonGateTextGiveBoard
	TX_FAR _CeladonGateTextGiveBoard
	db "@"

CeladonGateTextNotEnough
	TX_FAR _CeladonGateTextNotEnough
	db "@"
	
CeladonGateTextRetalk
	TX_FAR _CeladonGateTextRetalk
	db "@"

CeladonGateGotBoardMessage:
	TX_FAR _CeladonGateGotBoardMessage
	TX_SFX_ITEM_1
	db "@"