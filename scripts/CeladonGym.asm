CeladonGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, SetCeladonGymInfo
	call EnableAutoTextBoxDrawing
	ld hl, CeladonGymTrainerHeader0
	ld de, CeladonGym_ScriptPointers
	ld a, [wCeladonGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeladonGymCurScript], a
	ret

SetCeladonGymInfo:
	ld hl, Gym4CityName
	ld de, Gym4LeaderName
	jp LoadGymLeaderAndCityName

Gym4CityName:
	db "CELADON CITY@"

Gym4LeaderName:
	db "MAXINE@"

CeladonGymResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wCeladonGymCurScript], a
	ld [wCurMapScript], a
	ret

CeladonGym_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw CeladonGymScript3

CeladonGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, CeladonGymResetScripts
	ld a, $f0
	ld [wJoyIgnore], a

CeladonGymScriptGiveRewards:
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_CELADON_GYM_MAXINE
	ld hl, wObtainedBadges
	set 4, [hl]
	ld hl, wBeatGymFlags
	set 4, [hl]
	lb bc, ULTRA_BALL, 3
	call GiveItem
	jr .done
.rematchwintext
	lb bc, GREAT_BALL, 3
	call GiveItem
	ld a, $5
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.done
	; deactivate gym trainers
	;SetEventRange EVENT_BEAT_VIRIDIAN_GYM_TRAINER_0, EVENT_BEAT_VIRIDIAN_GYM_TRAINER_7

	;ld a, HS_ROUTE_22_RIVAL_2
	;ld [wMissableObjectIndex], a
	;predef ShowObject
	;SetEvents EVENT_2ND_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	jp CeladonGymResetScripts

CeladonGym_TextPointers:
	dw CeladonGymText1 ; leader 
	dw CeladonGymText2 ; unused, trainer 
	dw CeladonGymText3 ; welcome assistant 
	dw CeladonGymText4 ; give rewards (first win)
	dw CeladonGymText5 ; give rewards (rematch)
	dw CeladonGymText6 ; no room for TM text 

CeladonGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_0
	dw CeladonGymBattleText1 ; TextBeforeBattle
	dw CeladonGymAfterBattleText1 ; TextAfterBattle
	dw CeladonGymEndBattleText1 ; TextEndBattle
	dw CeladonGymEndBattleText1 ; TextEndBattle

	db $ff

CeladonGymText1:
	TX_ASM
	call CountNumBadgesOwned
	CheckEvent EVENT_BEAT_CELADON_GYM_MAXINE
	jr z, .startbattle
	CheckEventReuseA EVENT_BEAT_CELADON_GYM_MAXINE
	jr nz, .rematch
	call z, CeladonGymScriptGiveRewards
	call DisableWaitingAfterTextDisplay
	jp .done
.rematch
	CheckEvent EVENT_CANT_REMATCH_GYM_4
	jr nz, .cantrematch
	ld a, $1
	ld [wGymBattleIsRematch], a	
	ld hl, CeladonGymRematchText
	call PrintText
	jr .initbattle
.cantrematch
	ld hl, CeladonGymCantRematchYetText
	call PrintText
	jr .done
.startbattle
	ld hl, CeladonGymFirstFightIntroText
	call PrintText
.initbattle
	SetEvent EVENT_CANT_REMATCH_GYM_4
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
	ld hl, CeladonGymHowManyBadgesText0
	call PrintText	
	jr .initfight
.plural
	ld hl, CeladonGymHowManyBadgesText
	call PrintText
.initfight
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld hl, CeladonGymWinText
	ld de, CeladonGymWinText
	jr .continit
.rematchwintext 
	ld hl, CeladonGymRematchWinText
	ld de, CeladonGymRematchWinText	
.continit
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $2
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wCeladonGymCurScript], a
.done
	jp TextScriptEnd

CeladonGymFirstFightIntroText:
	TX_FAR _CeladonGymFirstFightIntroText
	db "@"

CeladonGymAfterVictoryText:
	TX_FAR _CeladonGymAfterVictoryText
	db "@"

CeladonGymRematchText:
	TX_FAR _CeladonGymRematchText
	db "@"
	
CeladonGymCantRematchYetText:
	TX_FAR _CeladonGymCantRematchYetText
	db "@" 

CeladonGymHowManyBadgesText0:
	TX_FAR _CeladonGymHowManyBadgesText0
	db "@" 
	
CeladonGymHowManyBadgesText:
	TX_FAR _CeladonGymHowManyBadgesText
	db "@" 

CeladonGymText4:
	TX_FAR _CeladonGymAfterVictoryText
	db "@"

CeladonGymText5:
	TX_FAR _CeladonGymAfterRematchText
	db "@"

CeladonGymText6:
	TX_FAR _TM34NoRoomText
	db "@"

CeladonGymWinText:
	TX_FAR _CeladonGymWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	TX_FAR _CeladonGymText_5c4c1
	db "@"

CeladonGymRematchWinText:
	TX_FAR _CeladonGymRematchWinText
	db "@" 

	
CeladonGymText2:
	TX_ASM
	ld hl, CeladonGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText1:
	TX_FAR _CeladonGymBattleText1
	db "@"

CeladonGymEndBattleText1:
	TX_FAR _CeladonGymEndBattleText1
	db "@"

CeladonGymAfterBattleText1:
	TX_FAR _CeladonGymAfterBattleText1
	db "@"

CeladonGymText3:
	TX_ASM
	CheckEvent EVENT_FOUND_LARS_IN_CAVE
	jr nz, .LeaderIsHere
	ld hl, CeladonGymWelcomeEmpty
	jr .done
.LeaderIsHere
	ld hl, CeladonGymWelcomeHere
.done
	call PrintText
	jp TextScriptEnd

CeladonGymWelcomeHere:
	TX_FAR _CeladonGymWelcomeHere
	db "@"
	
CeladonGymWelcomeEmpty:
	TX_FAR _CeladonGymWelcomeEmpty
	db "@"

