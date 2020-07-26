ViridianSchoolHouse_Script:
	jp EnableAutoTextBoxDrawing

ViridianSchoolHouse_TextPointers:
	dw ViridianGateText1

ViridianGateText1:
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
	
	
	ld hl, ViridianGateText1Start
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
	ld hl, ViridianGateTextGiveBoard
	call PrintText
	ld a, 1
	jr .done
.bagFull
.notEnoughOwnedMons
	ld hl, ViridianGateTextNotEnough
	call PrintText
	jr .finish
	xor a
.done
	ldh [hOaksAideResult], a		
	ld a, [hOaksAideResult]
	cp $1
	jr nz, .finish
	SetEvent EVENT_GOT_HM03	
	ld hl, ViridianGateGotBoardMessage
	call PrintText
	jr .finish
.RepeatText
	ld hl, ViridianGateTextRetalk
	call PrintText
.finish
	jp TextScriptEnd


ViridianGateText1Start
	TX_FAR _ViridianGateText1Start
	db "@"
	
ViridianGateTextGiveBoard
	TX_FAR _ViridianGateTextGiveBoard
	db "@"

ViridianGateTextNotEnough
	TX_FAR _ViridianGateTextNotEnough
	db "@"
	
ViridianGateTextRetalk
	TX_FAR _ViridianGateTextRetalk
	db "@"

ViridianGateGotBoardMessage:
	TX_FAR _ViridianGateGotBoardMessage
	TX_SFX_ITEM_1
	db "@"