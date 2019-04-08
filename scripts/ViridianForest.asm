ViridianForest_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianForestTrainerHeader0
	ld de, ViridianForest_ScriptPointers
	ld a, [wViridianForestCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianForestCurScript], a
	ret

ViridianForest_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

ViridianForest_TextPointers:
	dw ViridianForestText1 ; entrance guy
	dw ViridianForestText2 ; trainer 1
	dw ViridianForestText3 ; trainer 2
	dw ViridianForestText4 ; trainer 3
	dw ViridianForestText9 ; trainer 4
	dw PickUpItemText ; item 1
	dw PickUpItemText ; item 2
	dw PickUpItemText ; item 3
	dw ViridianForestText8 ; bouncer
	dw ViridianForestText10 ; s exit sign
	dw ViridianForestText11 ; clearcutting sign
	dw ViridianForestText12 ; foremans sign
	dw ViridianForestText13 ; n exit sign

ViridianForestTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0
	dw ViridianForestBattleText1 ; TextBeforeBattle
	dw ViridianForestAfterBattleText1 ; TextAfterBattle
	dw ViridianForestEndBattleText1 ; TextEndBattle
	dw ViridianForestEndBattleText1 ; TextEndBattle

ViridianForestTrainerHeader1:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1
	dw ViridianForestBattleText2 ; TextBeforeBattle
	dw ViridianForestAfterBattleText2 ; TextAfterBattle
	dw ViridianForestEndBattleText2 ; TextEndBattle
	dw ViridianForestEndBattleText2 ; TextEndBattle

ViridianForestTrainerHeader2:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2
	dw ViridianForestBattleText3 ; TextBeforeBattle
	dw ViridianForestAfterBattleText3 ; TextAfterBattle
	dw ViridianForestEndBattleText3 ; TextEndBattle
	dw ViridianForestEndBattleText3 ; TextEndBattle
	
ViridianForestTrainerHeader3:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3
	dw ViridianForestBattleText4 ; TextBeforeBattle
	dw ViridianForestAfterBattleText4 ; TextAfterBattle
	dw ViridianForestEndBattleText4 ; TextEndBattle
	dw ViridianForestEndBattleText4 ; TextEndBattle

	db $ff
	
;entrance guy
ViridianForestText1:
	TX_FAR _ViridianForestText1
	db "@"

; trainer 1 
ViridianForestText2:
	TX_ASM
	ld hl, ViridianForestTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

; trainer 2
ViridianForestText3:
	TX_ASM
	ld hl, ViridianForestTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

; trainer 3
ViridianForestText4:
	TX_ASM
	ld hl, ViridianForestTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd


; trainer 1 substrings 
ViridianForestBattleText1:
	TX_FAR _ViridianForestBattleText1
	db "@"

ViridianForestEndBattleText1:
	TX_FAR _ViridianForestEndBattleText1
	db "@"

ViridianForestAfterBattleText1:
	TX_FAR _ViridianFrstAfterBattleText1
	db "@"

; trainer 2 substrings
ViridianForestBattleText2:
	TX_FAR _ViridianForestBattleText2
	db "@"

ViridianForestEndBattleText2:
	TX_FAR _ViridianForestEndBattleText2
	db "@"

ViridianForestAfterBattleText2:
	TX_FAR _ViridianFrstAfterBattleText2
	db "@"
 
; trainer 3 substrings
ViridianForestBattleText3:
	TX_FAR _ViridianForestBattleText3
	db "@"

ViridianForestEndBattleText3:
	TX_FAR _ViridianForestEndBattleText3
	db "@"

ViridianForestAfterBattleText3:
	TX_FAR _ViridianFrstAfterBattleText3
	db "@"

; bouncer
;give SCYTHE (axe) if defeated all trainers 

ViridianForestText8:
	TX_ASM
	
	CheckEvent EVENT_BEAT_VIRIDIAN_FOREST_GOT_AXE
	jr nz, .GoAwayText	
	;if there's a way to batch-check events then this
	;can be optimized later
	CheckEvent EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_0
	jr z, .normaltext	
	CheckEvent EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_1
	jr z, .normaltext	
	CheckEvent EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_2
	jr z, .normaltext	
	CheckEvent EVENT_BEAT_VIRIDIAN_FOREST_TRAINER_3
	jr z, .normaltext
	ld hl, ViridianForestText8b ; here you go text 
	call PrintText
	lb bc, SCYTHE, 1
	call GiveItem
	jr nc, .BagFull
	SetEvent EVENT_BEAT_VIRIDIAN_FOREST_GOT_AXE
	ld hl, ViridianForestText8b_get ; GOT ITEM text
	jr .done
.BagFull
	ld hl, ViridianForestText8b_noroom ; too much stuff text
	jr .done
.normaltext
	ld hl, ViridianForestText8a ; axe quest explanation
	jr .done
.GoAwayText
	ld hl, ViridianForestText8c ; axe quest explanation
.done
	call PrintText
	jp TextScriptEnd

ViridianForestText8a:
	TX_FAR _ViridianForestText8a
	db "@"
	
ViridianForestText8b:
	TX_FAR _ViridianForestText8b
	db "@"
	
ViridianForestText8b_get: 
	TX_FAR _ViridianForestText8b_get
	TX_SFX_KEY_ITEM
	db "@"

	
ViridianForestText8b_noroom: 
	TX_FAR _ViridianForestText8b_noroom
	db "@"
	
ViridianForestText8c:
	TX_FAR _ViridianForestText8c
	db "@"

; trainer 4
ViridianForestText9:
	TX_ASM
	ld hl, ViridianForestTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

;trainer 4 substrings
ViridianForestBattleText4:
	TX_FAR _ViridianForestBattleText4
	db "@"

ViridianForestEndBattleText4:
	TX_FAR _ViridianForestEndBattleText4
	db "@"

ViridianForestAfterBattleText4:
	TX_FAR _ViridianFrstAfterBattleText4
	db "@"
	
; s exit 
ViridianForestText10:
	TX_FAR _ViridianForestText10
	db "@"
	
; clearcutting sign
ViridianForestText11:
	TX_FAR _ViridianForestText11
	db "@"

;foremans sign
ViridianForestText12:
	TX_FAR _ViridianForestText12
	db "@"

; n exit sign
ViridianForestText13:
	TX_FAR _ViridianForestText13
	db "@"

