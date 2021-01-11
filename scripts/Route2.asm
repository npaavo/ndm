Route2_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route2TrainerHeader0
	ld de, Route2_ScriptPointers
	ld a, [wRoute2CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute2CurScript], a
	ret

Route2_TextPointers:
	dw Route2Text6 ;trainer0
	dw Route2Text7 ;trainer1
	dw Route2Text8 ;trainer2
	dw Route2Text9 ;trainer3
	dw PickUpItemText
	dw PickUpItemText
	dw Route2Text5 ; lake boy
	dw Route2Text3 ; sign
	dw Route2Text4 ; sign


Route2_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	
Route2TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_ROUTE_2_TRAINER_0
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_2_TRAINER_0
	dw Route2BattleText1 ; TextBeforeBattle
	dw Route2AfterBattleText1 ; TextAfterBattle
	dw Route2EndBattleText1 ; TextEndBattle
	dw Route2EndBattleText1 ; TextEndBattle

Route2TrainerHeader1:
	dbEventFlagBit EVENT_BEAT_ROUTE_2_TRAINER_1
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_2_TRAINER_1
	dw Route2BattleText2 ; TextBeforeBattle
	dw Route2AfterBattleText2 ; TextAfterBattle
	dw Route2EndBattleText2 ; TextEndBattle
	dw Route2EndBattleText2 ; TextEndBattle

Route2TrainerHeader2:
	dbEventFlagBit EVENT_BEAT_ROUTE_6_TRAINER_2
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_2_TRAINER_2
	dw Route2BattleText3 ; TextBeforeBattle
	dw Route2AfterBattleText3 ; TextAfterBattle
	dw Route2EndBattleText3 ; TextEndBattle
	dw Route2EndBattleText3 ; TextEndBattle

Route2TrainerHeader3:
	dbEventFlagBit EVENT_BEAT_ROUTE_6_TRAINER_3
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_2_TRAINER_3
	dw Route2BattleText4 ; TextBeforeBattle
	dw Route2AfterBattleText4 ; TextAfterBattle
	dw Route2EndBattleText4 ; TextEndBattle
	dw Route2EndBattleText4 ; TextEndBattle
	
	db $FF
	
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


	
Route2Text6:
	TX_ASM
	ld hl, Route2TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route2BattleText1:
	TX_FAR _Route2BattleText1
	db "@"

Route2EndBattleText1:
	TX_FAR _Route2EndBattleText1
	db "@"

Route2AfterBattleText1:
	TX_FAR _Route2AfterBattleText1
	db "@"

Route2Text7:
	TX_ASM
	ld hl, Route2TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route2BattleText2:
	TX_FAR _Route2BattleText2
	db "@"

Route2EndBattleText2:
	TX_FAR _Route2EndBattleText2
	db "@"

Route2AfterBattleText2:
	TX_FAR _Route2AfterBattleText2
	db "@"

Route2Text8:
	TX_ASM
	ld hl, Route2TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route2BattleText3:
	TX_FAR _Route2BattleText3
	db "@"

Route2EndBattleText3:
	TX_FAR _Route2EndBattleText3
	db "@"

Route2AfterBattleText3:
	TX_FAR _Route2AfterBattleText3
	db "@"
	
Route2Text9:
	TX_ASM
	ld hl, Route2TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route2BattleText4:
	TX_FAR _Route2BattleText4
	db "@"

Route2EndBattleText4:
	TX_FAR _Route2EndBattleText4
	db "@"

Route2AfterBattleText4:
	TX_FAR _Route2AfterBattleText4
	db "@"
