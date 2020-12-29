Route5_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route5TrainerHeader0
	ld de, Route5_ScriptPointers
	ld a, [wRoute5CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute5CurScript], a
	ret
	
Route5_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	
Route5_TextPointers:
	dw Route5Text1 ; trainer 1
	dw Route5Text2 ; 2
	dw Route5Text3 ; and 3
	dw Route5Text4 ; sign
	
Route5TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_ROUTE_5_TRAINER_0
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_5_TRAINER_0
	dw Route5BattleText1 ; TextBeforeBattle
	dw Route5AfterBattleText1 ; TextAfterBattle
	dw Route5EndBattleText1 ; TextEndBattle
	dw Route5EndBattleText1 ; TextEndBattle

Route5TrainerHeader1:
	dbEventFlagBit EVENT_BEAT_ROUTE_5_TRAINER_1
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_5_TRAINER_1
	dw Route5BattleText2 ; TextBeforeBattle
	dw Route5AfterBattleText2 ; TextAfterBattle
	dw Route5EndBattleText2 ; TextEndBattle
	dw Route5EndBattleText2 ; TextEndBattle

Route5TrainerHeader2:
	dbEventFlagBit EVENT_BEAT_ROUTE_5_TRAINER_2
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_5_TRAINER_2
	dw Route5BattleText3 ; TextBeforeBattle
	dw Route5AfterBattleText3 ; TextAfterBattle
	dw Route5EndBattleText3 ; TextEndBattle
	dw Route5EndBattleText3 ; TextEndBattle
	
	db $ff
	
Route5Text1:
	TX_ASM
	ld hl, Route5TrainerHeader0
	jr Route5TalkToTrainer

Route5Text2:
	TX_ASM
	ld hl, Route5TrainerHeader1
	jr Route5TalkToTrainer

Route5Text3:
	TX_ASM
	ld hl, Route5TrainerHeader2
Route5TalkToTrainer: ;fall through
	call TalkToTrainer
	jp TextScriptEnd
	
Route5BattleText1:
	TX_FAR _Route5BattleText1
	db "@"

Route5EndBattleText1:
	TX_FAR _Route5EndBattleText1
	db "@"

Route5AfterBattleText1:
	TX_FAR _Route5AfterBattleText1
	db "@"

Route5BattleText2:
	TX_FAR _Route5BattleText2
	db "@"

Route5EndBattleText2:
	TX_FAR _Route5EndBattleText2
	db "@"

Route5AfterBattleText2:
	TX_FAR _Route5AfterBattleText2
	db "@"

Route5BattleText3:
	TX_FAR _Route5BattleText3
	db "@"

Route5EndBattleText3:
	TX_FAR _Route5EndBattleText3
	db "@"

Route5AfterBattleText3:
	TX_FAR _Route5AfterBattleText3
	db "@"

Route5Text4:
	TX_FAR _Route5Text4
	db "@"
