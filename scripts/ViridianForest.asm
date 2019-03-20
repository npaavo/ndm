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
ViridianForestText8:
	TX_FAR _ViridianForestText8
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

