Museum2F_Script:
	jp EnableAutoTextBoxDrawing

Museum2F_TextPointers:
	dw Museum2FText1

Museum2FText1:
	TX_ASM
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, Museum2FText1a
	call PrintText
	call GBFadeOutToBlack
	SetEvent EVENT_FOUND_LARS_IN_CAVE
	ld a, HS_PEWTER_GYM_LARS_IN_CAVE
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_PEWTER_GYM_LARS_IN_GYM
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	jp TextScriptEnd

Museum2FText1a::
	TX_FAR _Museum2FText1
	db "@" 

