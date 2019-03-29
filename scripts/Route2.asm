Route2_Script:
	jp EnableAutoTextBoxDrawing

Route2_TextPointers:
	dw PickUpItemText
	dw PickUpItemText
	dw Route2Text5
	dw Route2Text3
	dw Route2Text4

Route2Text3:
	TX_FAR _Route2Text3
	db "@"

Route2Text4:
	TX_FAR _Route2Text4
	db "@"

Route2Text5:	
	TX_ASM
	ld hl, LakeHealText1
	call PrintText
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	call UpdateSprites	
	call GBFadeOutToWhite
	call ReloadMapData
	predef HealParty
	call GBFadeInFromWhite
	ld hl, LakeHealText2
	call PrintText
	jp TextScriptEnd

LakeHealText1:
	TX_FAR _LakeHealText1
	db "@"
	
LakeHealText2:
	TX_FAR _LakeHealText2
	db "@"
