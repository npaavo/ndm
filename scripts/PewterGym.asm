PewterGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, SetPewterGymInfo
	call EnableAutoTextBoxDrawing
	ld hl, PewterGymTrainerHeader0
	ld de, PewterGym_ScriptPointers
	ld a, [wPewterGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPewterGymCurScript], a
	ret

SetPewterGymInfo:
	ld hl, Gym1CityName
	ld de, Gym1LeaderName
	jp LoadGymLeaderAndCityName

Gym1CityName:
	db "PEWTER CITY@"

Gym1LeaderName:
	db "BROCK@"

PewterGymScript_5c3bf:
	xor a
	ld [wJoyIgnore], a
	ld [wPewterGymCurScript], a
	ld [wCurMapScript], a
	ret

PewterGym_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw PewterGymScript3

PewterGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, PewterGymScript_5c3bf
	ld a, $f0
	ld [wJoyIgnore], a

PewterGymScriptGiveRewards:
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_BROCK
	lb bc, TM_34, 1
	call GiveItem
	jr nc, .BagFull
	ld a, $5
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM34
	jr .gotit
.BagFull
	ld a, $6
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.gotit
	ld hl, wObtainedBadges
	set 0, [hl]
	ld hl, wBeatGymFlags
	set 0, [hl]

	ld a, HS_GYM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROUTE_22_RIVAL_1
	ld [wMissableObjectIndex], a
	predef HideObject

	ResetEvents EVENT_1ST_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE

	; deactivate gym trainers
	SetEvent EVENT_BEAT_PEWTER_GYM_TRAINER_0

	jp PewterGymScript_5c3bf

PewterGym_TextPointers:
	dw PewterGymText1
	dw PewterGymText2
	dw PewterGymText3
	dw PewterGymText4
	dw PewterGymText5
	dw PewterGymText6

PewterGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_PEWTER_GYM_TRAINER_0
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_PEWTER_GYM_TRAINER_0
	dw PewterGymBattleText1 ; TextBeforeBattle
	dw PewterGymAfterBattleText1 ; TextAfterBattle
	dw PewterGymEndBattleText1 ; TextEndBattle
	dw PewterGymEndBattleText1 ; TextEndBattle

	db $ff

PewterGymText1:
	TX_ASM
	CheckEvent EVENT_BEAT_BROCK
	jr z, .fight
	CheckEventReuseA EVENT_GOT_TM34
	jr nz, .alreadywon
	call z, PewterGymScriptGiveRewards
	call DisableWaitingAfterTextDisplay
	jr .done
.alreadywon
	ld hl, PewterGymAfterVictoryText
	call PrintText
	jr .done
.fight
	ld hl, PewterGymFirstFightIntroText
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, PewterGymWinText
	ld de, PewterGymWinText
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $1
	ld [wGymLeaderNo], a
	xor a
	ld [hJoyHeld], a
	ld a, $3
	ld [wPewterGymCurScript], a
	ld [wCurMapScript], a
.done
	jp TextScriptEnd

PewterGymFirstFightIntroText:
	TX_FAR _PewterGymFirstFightIntroText
	db "@"

PewterGymAfterVictoryText:
	TX_FAR _PewterGymAfterVictoryText
	db "@"

PewterGymText4:
	TX_FAR _TM34PreReceiveText
	db "@"

PewterGymText5:
	TX_FAR _ReceivedTM34Text
	TX_SFX_ITEM_1
	TX_FAR _TM34ExplanationText
	db "@"

PewterGymText6:
	TX_FAR _TM34NoRoomText
	db "@"

PewterGymWinText:
	TX_FAR _PewterGymWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	TX_FAR _PewterGymText_5c4c1
	db "@"

PewterGymText2:
	TX_ASM
	ld hl, PewterGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

PewterGymBattleText1:
	TX_FAR _PewterGymBattleText1
	db "@"

PewterGymEndBattleText1:
	TX_FAR _PewterGymEndBattleText1
	db "@"

PewterGymAfterBattleText1:
	TX_FAR _PewterGymAfterBattleText1
	db "@"

PewterGymText3:
	TX_ASM
	ld a, [wBeatGymFlags]
	bit 0, a
	jr nz, .asm_5c50c
	ld hl, PewterGymTutorialText1
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_5c4fe
	ld hl, PewterGymTutorialText2
	call PrintText
	jr .asm_5c504
.asm_5c4fe
	ld hl, PewterGymTutorialText4
	call PrintText
.asm_5c504
	ld hl, PewterGymTutorialText3
	call PrintText
	jr .asm_5c512
.asm_5c50c
	ld hl, PewterGymTutorialTextWon
	call PrintText
.asm_5c512
	jp TextScriptEnd

PewterGymTutorialText1:
	TX_FAR _PewterGymTutorialText1
	db "@"

PewterGymTutorialText2:
	TX_FAR _PewterGymTutorialText2
	db "@"

PewterGymTutorialText3:
	TX_FAR _PewterGymTutorialText3
	db "@"

PewterGymTutorialText4:
	TX_FAR _PewterGymTutorialText4
	db "@"

PewterGymTutorialTextWon:
	TX_FAR _PewterGymTutorialTextWon
	db "@"
