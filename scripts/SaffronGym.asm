SaffronGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, SetSaffronGymInfo
	call EnableAutoTextBoxDrawing
	ld hl, SaffronGymTrainerHeader0
	ld de, SaffronGym_ScriptPointers
	ld a, [wSaffronGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSaffronGymCurScript], a
	ret

SetSaffronGymInfo:
	ld hl, Gym6CityName
	ld de, Gym6LeaderName
	jp LoadGymLeaderAndCityName

Gym6CityName:
	db "SAFFRON CITY@"

Gym6LeaderName:
	db "HUGH@"

SaffronGymResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wSaffronGymCurScript], a
	ld [wCurMapScript], a
	ret

SaffronGym_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw SaffronGymScript3

SaffronGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, SaffronGymResetScripts
	ld a, $f0
	ld [wJoyIgnore], a

SaffronGymScriptGiveRewards:
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_SAFFRON_GYM_HUGH
	ld hl, wObtainedBadges
	set 5, [hl]
	ld hl, wBeatGymFlags
	set 5, [hl]
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
	jp SaffronGymResetScripts

SaffronGym_TextPointers:
	dw SaffronGymText1 ; leader 
	dw SaffronGymText2 ; unused, trainer 
	dw SaffronGymText3 ; welcome assistant 
	dw SaffronGymText4 ; give rewards (first win)
	dw SaffronGymText5 ; give rewards (rematch)
	dw SaffronGymText6 ; no room for TM text 

SaffronGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_SAFFRON_GYM_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_SAFFRON_GYM_TRAINER_0
	dw SaffronGymBattleText1 ; TextBeforeBattle
	dw SaffronGymAfterBattleText1 ; TextAfterBattle
	dw SaffronGymEndBattleText1 ; TextEndBattle
	dw SaffronGymEndBattleText1 ; TextEndBattle

	db $ff

SaffronGymText1:
	TX_ASM
	call CountNumBadgesOwned
	CheckEvent EVENT_BEAT_SAFFRON_GYM_HUGH
	jr z, .startbattle
	CheckEventReuseA EVENT_BEAT_SAFFRON_GYM_HUGH
	jr nz, .rematch
	call z, SaffronGymScriptGiveRewards
	call DisableWaitingAfterTextDisplay
	jp .done
.rematch
	CheckEvent EVENT_CANT_REMATCH_GYM_5
	jr nz, .cantrematch
	ld a, $1
	ld [wGymBattleIsRematch], a	
	ld hl, SaffronGymRematchText
	call PrintText
	jr .initbattle
.cantrematch
	ld hl, SaffronGymCantRematchYetText
	call PrintText
	jr .done
.startbattle
	ld hl, SaffronGymFirstFightIntroText
	call PrintText
.initbattle
	SetEvent EVENT_CANT_REMATCH_GYM_5
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
	ld hl, SaffronGymHowManyBadgesText0
	call PrintText	
	jr .initfight
.plural
	ld hl, SaffronGymHowManyBadgesText
	call PrintText
.initfight
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld hl, SaffronGymWinText
	ld de, SaffronGymWinText
	jr .continit
.rematchwintext 
	ld hl, SaffronGymRematchWinText
	ld de, SaffronGymRematchWinText	
.continit
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $2
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wSaffronGymCurScript], a
.done
	jp TextScriptEnd

SaffronGymFirstFightIntroText:
	TX_FAR _SaffronGymFirstFightIntroText
	db "@"

SaffronGymAfterVictoryText:
	TX_FAR _SaffronGymAfterVictoryText
	db "@"

SaffronGymRematchText:
	TX_FAR _SaffronGymRematchText
	db "@"
	
SaffronGymCantRematchYetText:
	TX_FAR _SaffronGymCantRematchYetText
	db "@" 

SaffronGymHowManyBadgesText0:
	TX_FAR _SaffronGymHowManyBadgesText0
	db "@" 
	
SaffronGymHowManyBadgesText:
	TX_FAR _SaffronGymHowManyBadgesText
	db "@" 

SaffronGymText4:
	TX_FAR _SaffronGymAfterVictoryText
	db "@"

SaffronGymText5:
	TX_FAR _SaffronGymAfterRematchText
	db "@"

SaffronGymText6:
	TX_FAR _TM34NoRoomText
	db "@"

SaffronGymWinText:
	TX_FAR _SaffronGymWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	TX_FAR _SaffronGymText_5c4c1
	db "@"

SaffronGymRematchWinText:
	TX_FAR _SaffronGymRematchWinText
	db "@" 

	
SaffronGymText2:
	TX_ASM
	ld hl, SaffronGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SaffronGymBattleText1:
	TX_FAR _SaffronGymBattleText1
	db "@"

SaffronGymEndBattleText1:
	TX_FAR _SaffronGymEndBattleText1
	db "@"

SaffronGymAfterBattleText1:
	TX_FAR _SaffronGymAfterBattleText1
	db "@"

SaffronGymText3:
	TX_ASM
	CheckEvent EVENT_FOUND_LARS_IN_CAVE
	jr nz, .LeaderIsHere
	ld hl, SaffronGymWelcomeEmpty
	jr .done
.LeaderIsHere
	ld hl, SaffronGymWelcomeHere
.done
	call PrintText
	jp TextScriptEnd

SaffronGymWelcomeHere:
	TX_FAR _SaffronGymWelcomeHere
	db "@"
	
SaffronGymWelcomeEmpty:
	TX_FAR _SaffronGymWelcomeEmpty
	db "@"

