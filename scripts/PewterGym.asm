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
	db "LARS@"

PewterGymResetScripts:
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
	jp z, PewterGymResetScripts
	ld a, $f0
	ld [wJoyIgnore], a

PewterGymScriptGiveRewards:
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld a, $c
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_PEWTER_GYM_LARS
	ld hl, wObtainedBadges
	set 0, [hl]
	ld hl, wBeatGymFlags
	set 0, [hl]
	lb bc, ULTRA_BALL, 3
	call GiveItem
	jr .done
.rematchwintext
	lb bc, GREAT_BALL, 3
	call GiveItem
	ld a, $f
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.done
	; deactivate gym trainers
	;SetEventRange EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0, EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7

	;ld a, HS_ROUTE_22_RIVAL_2
	;ld [wMissableObjectIndex], a
	;predef ShowObject
	;SetEvents EVENT_2ND_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	jp PewterGymResetScripts

PewterGym_TextPointers:
	dw PewterGymText1
	dw PewterGymText2
	dw PewterGymText3
	dw PewterGymText4
	dw PewterGymText5
	dw PewterGymText6

PewterGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_PEWTER_GYM_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_PEWTER_GYM_TRAINER_0
	dw PewterGymBattleText1 ; TextBeforeBattle
	dw PewterGymAfterBattleText1 ; TextAfterBattle
	dw PewterGymEndBattleText1 ; TextEndBattle
	dw PewterGymEndBattleText1 ; TextEndBattle

	db $ff

PewterGymText1:
	TX_ASM
	call CountNumBadgesOwned
	CheckEvent EVENT_BEAT_PEWTER_GYM_LARS
	jr z, .startbattle
	CheckEventReuseA EVENT_BEAT_PEWTER_GYM_LARS
	jr nz, .rematch
	call z, PewterGymScriptGiveRewards
	call DisableWaitingAfterTextDisplay
	jp .done
.rematch
	CheckEvent EVENT_CANT_REMATCH_GYM_1
	jr nz, .cantrematch
	ld a, $1
	ld [wGymBattleIsRematch], a	
	ld hl, PewterGymRematchText
	call PrintText
	jr .initbattle
.cantrematch
	ld hl, PewterGymCantRematchYetText
	call PrintText
	jr .done
.startbattle
	ld hl, PewterGymFirstFightIntroText
	call PrintText
.initbattle
	SetEvent EVENT_CANT_REMATCH_GYM_1
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
	jr nz, .plural
.nobadges
	ld hl, PewterGymHowManyBadgesText0
	call PrintText	
	jr .initfight
.plural
	ld hl, PewterGymHowManyBadgesText
	call PrintText
.initfight
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld hl, PewterGymWinText
	ld de, PewterGymWinText
	jr .continit
.rematchwintext 
	ld hl, PewterGymRematchWinText
	ld de, PewterGymRematchWinText	
.continit
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	call SetGymPartyByBadgeCount
	ld a, $2
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wPewterGymCurScript], a
.done
	jp TextScriptEnd

PewterGymFirstFightIntroText:
	TX_FAR _PewterGymFirstFightIntroText
	db "@"

PewterGymAfterVictoryText:
	TX_FAR _PewterGymAfterVictoryText
	db "@"

PewterGymRematchText:
	TX_FAR _PewterGymRematchText
	db "@"
	
PewterGymCantRematchYetText:
	TX_FAR _PewterGymCantRematchYetText
	db "@" 

PewterGymHowManyBadgesText0:
	TX_FAR _PewterGymHowManyBadgesText0
	db "@" 
	
PewterGymHowManyBadgesText:
	TX_FAR _PewterGymHowManyBadgesText
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

PewterGymRematchWinText:
	TX_FAR _PewterGymRematchWinText
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
	CheckEvent EVENT_FOUND_LARS_IN_CAVE
	jr nz, .LeaderIsHere
	ld hl, PewterGymWelcomeEmpty
	jr .done
.LeaderIsHere
	ld hl, PewterGymWelcomeHere
.done
	call PrintText
	jp TextScriptEnd

PewterGymWelcomeHere:
	TX_FAR _PewterGymWelcomeHere
	db "@"
	
PewterGymWelcomeEmpty:
	TX_FAR _PewterGymWelcomeEmpty
	db "@"

