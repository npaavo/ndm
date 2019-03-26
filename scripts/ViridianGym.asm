ViridianGym_Script:
	ld hl, Gym8CityName
	ld de, Gym8LeaderName
	call LoadGymLeaderAndCityName
	call EnableAutoTextBoxDrawing
	ld hl, ViridianGymTrainerHeader0
	ld de, ViridianGym_ScriptPointers
	ld a, [wViridianGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wViridianGymCurScript], a
	ret

Gym8CityName:
	db "VIRIDIAN CITY@"
Gym8LeaderName:
	db "WYLDA@"

ViridianGymScript_ResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wViridianGymCurScript], a
	ld [wCurMapScript], a
	ret

ViridianGym_ScriptPointers:
	dw ViridianGymScript0
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw ViridianGymScript3
	dw ViridianGymScript4

ViridianGymScript0:
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
	ld hl, ViridianGymArrowTilePlayerMovement
	call DecodeArrowMovementRLE
	cp $ff
	jp z, CheckFightingMapTrainers
	call StartSimulatingJoypadStates
	ld hl, wd736
	set 7, [hl]
	ld a, SFX_ARROW_TILES
	call PlaySound
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, $4
	ld [wCurMapScript], a
	ret

;format:
;db y,x
;dw pointer to movement
ViridianGymArrowTilePlayerMovement:
	db $0,$0
	dw ViridianGymArrowMovement1
	db $FF

;format: direction, count
ViridianGymArrowMovement1:
	db D_UP,$01,$FF

ViridianGymScript4:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	jr nz, .done
	xor a
	ld [wJoyIgnore], a
	ld hl, wd736
	res 7, [hl]
	ld a, $0
	ld [wCurMapScript], a
	ret
.done
	jpba LoadSpinnerArrowTiles

ViridianGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, ViridianGymScript_ResetScripts
	ld a, $f0
	ld [wJoyIgnore], a
	
ViridianGymScript3_GiveRewards:

	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld a, $c
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_VIRIDIAN_GYM_WYLDA
	SetEvent EVENT_GOT_TM27
	ld hl, wObtainedBadges
	set 0, [hl]
	ld hl, wBeatGymFlags
	set 0, [hl]
	jr .done
.rematchwintext
	ld a, $d
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.done


	; deactivate gym trainers
	;SetEventRange EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0, EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7

	;ld a, HS_ROUTE_22_RIVAL_2
	;ld [wMissableObjectIndex], a
	;predef ShowObject
	;SetEvents EVENT_2ND_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	jp ViridianGymScript_ResetScripts

ViridianGym_TextPointers:
	dw ViridianGymText1
	dw ViridianGymText2
	dw ViridianGymText3
	dw ViridianGymText4
	dw ViridianGymText5
	dw ViridianGymText6
	dw ViridianGymText7
	dw ViridianGymText8
	dw ViridianGymText9
	dw ViridianGymText10
	dw PickUpItemText
	dw ViridianGymText12
	dw ViridianGymText13
	dw ViridianGymText14

ViridianGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0
	dw ViridianGymBattleText1 ; TextBeforeBattle
	dw ViridianGymAfterBattleText1 ; TextAfterBattle
	dw ViridianGymEndBattleText1 ; TextEndBattle
	dw ViridianGymEndBattleText1 ; TextEndBattle

ViridianGymTrainerHeader1:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_1
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_1
	dw ViridianGymBattleText2 ; TextBeforeBattle
	dw ViridianGymAfterBattleText2 ; TextAfterBattle
	dw ViridianGymEndBattleText2 ; TextEndBattle
	dw ViridianGymEndBattleText2 ; TextEndBattle

ViridianGymTrainerHeader2:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_2
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_2
	dw ViridianGymBattleText3 ; TextBeforeBattle
	dw ViridianGymAfterBattleText3 ; TextAfterBattle
	dw ViridianGymEndBattleText3 ; TextEndBattle
	dw ViridianGymEndBattleText3 ; TextEndBattle

ViridianGymTrainerHeader3:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_3
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_3
	dw ViridianGymBattleText4 ; TextBeforeBattle
	dw ViridianGymAfterBattleText4 ; TextAfterBattle
	dw ViridianGymEndBattleText4 ; TextEndBattle
	dw ViridianGymEndBattleText4 ; TextEndBattle

ViridianGymTrainerHeader4:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_4
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_4
	dw ViridianGymBattleText5 ; TextBeforeBattle
	dw ViridianGymAfterBattleText5 ; TextAfterBattle
	dw ViridianGymEndBattleText5 ; TextEndBattle
	dw ViridianGymEndBattleText5 ; TextEndBattle

ViridianGymTrainerHeader5:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_5
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_5
	dw ViridianGymBattleText6 ; TextBeforeBattle
	dw ViridianGymAfterBattleText6 ; TextAfterBattle
	dw ViridianGymEndBattleText6 ; TextEndBattle
	dw ViridianGymEndBattleText6 ; TextEndBattle

ViridianGymTrainerHeader6:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_6, 1
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_6, 1
	dw ViridianGymBattleText7 ; TextBeforeBattle
	dw ViridianGymAfterBattleText7 ; TextAfterBattle
	dw ViridianGymEndBattleText7 ; TextEndBattle
	dw ViridianGymEndBattleText7 ; TextEndBattle

ViridianGymTrainerHeader7:
	dbEventFlagBit EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7, 1
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7, 1
	dw ViridianGymBattleText8 ; TextBeforeBattle
	dw ViridianGymAfterBattleText8 ; TextAfterBattle
	dw ViridianGymEndBattleText8 ; TextEndBattle
	dw ViridianGymEndBattleText8 ; TextEndBattle

	db $ff

ViridianGymText1:
	TX_ASM
	call CountNumBadgesOwned
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_WYLDA
	jr z, .startbattle
	CheckEventReuseA EVENT_GOT_TM27
	jr nz, .rematch
	call z, ViridianGymScript3_GiveRewards
	call DisableWaitingAfterTextDisplay
	jr .done
.rematch
	ld a, $1
	ld [wGymBattleIsRematch], a	
	ld hl, ViridianGymRematchText
	call PrintText
	jr .initbattle
.startbattle
	ld hl, ViridianGymIntroText
	call PrintText
.initbattle
	;allegedly this does nothing but at this point this jenga tower 
	;has collapsed enough times where I'm sure it does something
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld a, [wEffectiveNumBadgesOwned]
	ld b, a
	xor a
	cp b
	jr z, .nobadges
	inc a 
	cp b
	jr z, .onebadge
	jr nz, .plural
.nobadges
	ld hl, ViridianGymHowManyBadgesText0
	call PrintText	
	jr .initfight
.onebadge
	ld hl, ViridianGymHowManyBadgesText1
	call PrintText	
	jr .initfight
.plural
	ld hl, ViridianGymHowManyBadgesText
	call PrintText
.initfight
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld hl, ViridianGymWinText
	ld de, ViridianGymWinText
	jr .continit
.rematchwintext 
	ld hl, ViridianGymRematchWinText
	ld de, ViridianGymRematchWinText	
.continit
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	call SetGymPartyByBadgeCount
	ld a, $1
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wViridianGymCurScript], a
.done
	jp TextScriptEnd

ViridianGymIntroText:
	TX_FAR _ViridianGymIntroText
	db "@"

ViridianGymWinText:
	TX_FAR _ViridianGymWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	db "@"
	
ViridianGymRematchWinText:
	TX_FAR _ViridianGymRematchWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	db "@"

ViridianGymRematchText:
	TX_FAR _ViridianGymRematchText
	db "@"

ViridianGymText12:
	TX_FAR _ViridianGymText12
	db "@"

ViridianGymText13:
	TX_FAR _ViridianGymPostRematchText
	db "@"

TM27ExplanationText:
	TX_FAR _TM27ExplanationText
	db "@"

ViridianGymText14:
	TX_FAR _TM27NoRoomText
	db "@"

ViridianGymText2:
	TX_ASM
	ld hl, ViridianGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText1:
	TX_FAR _ViridianGymBattleText1
	db "@"

ViridianGymEndBattleText1:
	TX_FAR _ViridianGymEndBattleText1
	db "@"

ViridianGymAfterBattleText1:
	TX_FAR _ViridianGymAfterBattleText1
	db "@"

ViridianGymText3:
	TX_ASM
	ld hl, ViridianGymTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText2:
	TX_FAR _ViridianGymBattleText2
	db "@"

ViridianGymEndBattleText2:
	TX_FAR _ViridianGymEndBattleText2
	db "@"

ViridianGymAfterBattleText2:
	TX_FAR _ViridianGymAfterBattleText2
	db "@"

ViridianGymText4:
	TX_ASM
	ld hl, ViridianGymTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText3:
	TX_FAR _ViridianGymBattleText3
	db "@"

ViridianGymEndBattleText3:
	TX_FAR _ViridianGymEndBattleText3
	db "@"

ViridianGymAfterBattleText3:
	TX_FAR _ViridianGymAfterBattleText3
	db "@"

ViridianGymText5:
	TX_ASM
	ld hl, ViridianGymTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText4:
	TX_FAR _ViridianGymBattleText4
	db "@"

ViridianGymEndBattleText4:
	TX_FAR _ViridianGymEndBattleText4
	db "@"

ViridianGymAfterBattleText4:
	TX_FAR _ViridianGymAfterBattleText4
	db "@"

ViridianGymText6:
	TX_ASM
	ld hl, ViridianGymTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText5:
	TX_FAR _ViridianGymBattleText5
	db "@"

ViridianGymEndBattleText5:
	TX_FAR _ViridianGymEndBattleText5
	db "@"

ViridianGymAfterBattleText5:
	TX_FAR _ViridianGymAfterBattleText5
	db "@"

ViridianGymText7:
	TX_ASM
	ld hl, ViridianGymTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText6:
	TX_FAR _ViridianGymBattleText6
	db "@"

ViridianGymEndBattleText6:
	TX_FAR _ViridianGymEndBattleText6
	db "@"

ViridianGymAfterBattleText6:
	TX_FAR _ViridianGymAfterBattleText6
	db "@"

ViridianGymText8:
	TX_ASM
	ld hl, ViridianGymTrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText7:
	TX_FAR _ViridianGymBattleText7
	db "@"

ViridianGymEndBattleText7:
	TX_FAR _ViridianGymEndBattleText7
	db "@"

ViridianGymAfterBattleText7:
	TX_FAR _ViridianGymAfterBattleText7
	db "@"

ViridianGymText9:
	TX_ASM
	ld hl, ViridianGymTrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

ViridianGymBattleText8:
	TX_FAR _ViridianGymBattleText8
	db "@"

ViridianGymEndBattleText8:
	TX_FAR _ViridianGymEndBattleText8
	db "@"

ViridianGymAfterBattleText8:
	TX_FAR _ViridianGymAfterBattleText8
	db "@"

ViridianGymText10:
	TX_ASM
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_WYLDA
	jr nz, .asm_1abd1
	ld hl, ViridianGymText_74bd4
	call PrintText
	jr .asm_6064d
.asm_1abd1
	ld hl, ViridianGymText_74bd9
	call PrintText
.asm_6064d
	jp TextScriptEnd

ViridianGymText_74bd4:
	TX_FAR _ViridianGymText_74bd4
	db "@"

ViridianGymText_74bd9:
	TX_FAR _ViridianGymText_74bd9
	db "@"
	
ViridianGymHowManyBadgesText0:
	TX_FAR _ViridianGymHowManyBadgesText0
	db "@"
	
ViridianGymHowManyBadgesText1:
	TX_FAR _ViridianGymHowManyBadgesText1
	db "@"
	
ViridianGymHowManyBadgesText:
	TX_FAR _ViridianGymHowManyBadgesText
	db "@"

