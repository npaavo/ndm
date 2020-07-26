CeruleanGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, SetCeruleanGymInfo
	call EnableAutoTextBoxDrawing
	ld hl, CeruleanGymTrainerHeader0
	ld de, CeruleanGym_ScriptPointers
	ld a, [wCeruleanGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeruleanGymCurScript], a
	ret

SetCeruleanGymInfo:
	ld hl, Gym1CityName
	ld de, Gym1LeaderName
	jp LoadGymLeaderAndCityName

Gym2CityName:
	db "CERULEAN CITY@"

Gym2LeaderName:
	db "TOBIAS@"

CeruleanGymResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wCeruleanGymCurScript], a
	ld [wCurMapScript], a
	ret

CeruleanGym_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw CeruleanGymScript3

CeruleanGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, CeruleanGymResetScripts
	ld a, $f0
	ld [wJoyIgnore], a

CeruleanGymScriptGiveRewards:
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_CERULEAN_GYM_TOBIAS
	ld hl, wObtainedBadges
	set 2, [hl]
	ld hl, wBeatGymFlags
	set 2, [hl]
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
	jp CeruleanGymResetScripts

CeruleanGym_TextPointers:
	dw CeruleanGymText1 ; leader 
	dw CeruleanGymText2 ; unused, trainer 
	dw CeruleanGymText3 ; welcome assistant 
	dw CeruleanGymText4 ; give rewards (first win)
	dw CeruleanGymText5 ; give rewards (rematch)
	dw CeruleanGymText6 ; no room for TM text 

CeruleanGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_CERULEAN_GYM_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CERULEAN_GYM_TRAINER_0
	dw CeruleanGymBattleText1 ; TextBeforeBattle
	dw CeruleanGymAfterBattleText1 ; TextAfterBattle
	dw CeruleanGymEndBattleText1 ; TextEndBattle
	dw CeruleanGymEndBattleText1 ; TextEndBattle

	db $ff

CeruleanGymText1:
	TX_ASM
	call CountNumBadgesOwned
	CheckEvent EVENT_BEAT_CERULEAN_GYM_TOBIAS
	jr z, .startbattle
	CheckEventReuseA EVENT_BEAT_CERULEAN_GYM_TOBIAS
	jr nz, .rematch
	call z, CeruleanGymScriptGiveRewards
	call DisableWaitingAfterTextDisplay
	jp .done
.rematch
	CheckEvent EVENT_CANT_REMATCH_GYM_2
	jr nz, .cantrematch
	ld a, $1
	ld [wGymBattleIsRematch], a	
	ld hl, CeruleanGymRematchText
	call PrintText
	jr .initbattle
.cantrematch
	ld hl, CeruleanGymCantRematchYetText
	call PrintText
	jr .done
.startbattle
	ld hl, CeruleanGymFirstFightIntroText
	call PrintText
.initbattle
	SetEvent EVENT_CANT_REMATCH_GYM_2
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
	ld hl, CeruleanGymHowManyBadgesText0
	call PrintText	
	jr .initfight
.plural
	ld hl, CeruleanGymHowManyBadgesText
	call PrintText
.initfight
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld hl, CeruleanGymWinText
	ld de, CeruleanGymWinText
	jr .continit
.rematchwintext 
	ld hl, CeruleanGymRematchWinText
	ld de, CeruleanGymRematchWinText	
.continit
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $2
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wCeruleanGymCurScript], a
.done
	jp TextScriptEnd

CeruleanGymFirstFightIntroText:
	TX_FAR _CeruleanGymFirstFightIntroText
	db "@"

CeruleanGymAfterVictoryText:
	TX_FAR _CeruleanGymAfterVictoryText
	db "@"

CeruleanGymRematchText:
	TX_FAR _CeruleanGymRematchText
	db "@"
	
CeruleanGymCantRematchYetText:
	TX_FAR _CeruleanGymCantRematchYetText
	db "@" 

CeruleanGymHowManyBadgesText0:
	TX_FAR _CeruleanGymHowManyBadgesText0
	db "@" 
	
CeruleanGymHowManyBadgesText:
	TX_FAR _CeruleanGymHowManyBadgesText
	db "@" 

CeruleanGymText4:
	TX_FAR _CeruleanGymAfterVictoryText
	db "@"

CeruleanGymText5:
	TX_FAR _CeruleanGymAfterRematchText
	db "@"

CeruleanGymText6:
	TX_FAR _TM34NoRoomText
	db "@"

CeruleanGymWinText:
	TX_FAR _CeruleanGymWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	TX_FAR _CeruleanGymText_5c4c1
	db "@"

CeruleanGymRematchWinText:
	TX_FAR _CeruleanGymRematchWinText
	db "@" 

	
CeruleanGymText2:
	TX_ASM
	ld hl, CeruleanGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeruleanGymBattleText1:
	TX_FAR _CeruleanGymBattleText1
	db "@"

CeruleanGymEndBattleText1:
	TX_FAR _CeruleanGymEndBattleText1
	db "@"

CeruleanGymAfterBattleText1:
	TX_FAR _CeruleanGymAfterBattleText1
	db "@"

CeruleanGymText3:
	TX_ASM
	;CheckEvent EVENT_FOUND_LARS_IN_CAVE
	;jr nz, .LeaderIsHere
	;ld hl, CeruleanGymWelcomeEmpty
	;jr .done
.LeaderIsHere
	ld hl, CeruleanGymWelcomeHere
.done
	call PrintText
	jp TextScriptEnd

CeruleanGymWelcomeHere:
	TX_FAR _CeruleanGymWelcomeHere
	db "@"
	
CeruleanGymWelcomeEmpty:
	TX_FAR _CeruleanGymWelcomeEmpty
	db "@"

