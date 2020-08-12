VermilionGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, SetVermilionGymInfo
	call EnableAutoTextBoxDrawing
	ld hl, VermilionGymTrainerHeader0
	ld de, VermilionGym_ScriptPointers
	ld a, [wVermilionGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wVermilionGymCurScript], a
	ret

SetVermilionGymInfo:
	ld hl, Gym3CityName
	ld de, Gym3LeaderName
	jp LoadGymLeaderAndCityName

Gym3CityName:
	db "VERMILION CITY@"

Gym3LeaderName:
	db "TORI@"

VermilionGymResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wVermilionGymCurScript], a
	ld [wCurMapScript], a
	ret

VermilionGym_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw VermilionGymScript3

VermilionGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, VermilionGymResetScripts
	ld a, $f0
	ld [wJoyIgnore], a

VermilionGymScriptGiveRewards:
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_VERMILION_GYM_TORI
	ld hl, wObtainedBadges
	set 3, [hl]
	ld hl, wBeatGymFlags
	set 3, [hl]
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
	jp VermilionGymResetScripts

VermilionGym_TextPointers:
	dw VermilionGymText1 ; leader 
	dw VermilionGymText2 ; unused, trainer 
	dw VermilionGymText3 ; welcome assistant 
	dw VermilionGymText4 ; give rewards (first win)
	dw VermilionGymText5 ; give rewards (rematch)
	dw VermilionGymText6 ; no room for TM text 

VermilionGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_VERMILION_GYM_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_VERMILION_GYM_TRAINER_0
	dw VermilionGymBattleText1 ; TextBeforeBattle
	dw VermilionGymAfterBattleText1 ; TextAfterBattle
	dw VermilionGymEndBattleText1 ; TextEndBattle
	dw VermilionGymEndBattleText1 ; TextEndBattle

	db $ff

VermilionGymText1:
	TX_ASM
	call CountNumBadgesOwned
	CheckEvent EVENT_BEAT_VERMILION_GYM_TORI
	jr z, .startbattle
	CheckEventReuseA EVENT_BEAT_VERMILION_GYM_TORI
	jr nz, .rematch
	call z, VermilionGymScriptGiveRewards
	call DisableWaitingAfterTextDisplay
	jp .done
.rematch
	CheckEvent EVENT_CANT_REMATCH_GYM_3
	jr nz, .cantrematch
	ld a, $1
	ld [wGymBattleIsRematch], a	
	ld hl, VermilionGymRematchText
	call PrintText
	jr .initbattle
.cantrematch
	ld hl, VermilionGymCantRematchYetText
	call PrintText
	jr .done
.startbattle
	ld hl, VermilionGymFirstFightIntroText
	call PrintText
.initbattle
	SetEvent EVENT_CANT_REMATCH_GYM_3
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
	ld hl, VermilionGymHowManyBadgesText0
	call PrintText	
	jr .initfight
.plural
	ld hl, VermilionGymHowManyBadgesText
	call PrintText
.initfight
	ld a, [wGymBattleIsRematch]
	cp $1
	jr z, .rematchwintext
	ld hl, VermilionGymWinText
	ld de, VermilionGymWinText
	jr .continit
.rematchwintext 
	ld hl, VermilionGymRematchWinText
	ld de, VermilionGymRematchWinText	
.continit
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $2
	ld [wGymLeaderNo], a
	ld a, $3
	ld [wVermilionGymCurScript], a
.done
	jp TextScriptEnd

VermilionGymFirstFightIntroText:
	TX_FAR _VermilionGymFirstFightIntroText
	db "@"

VermilionGymAfterVictoryText:
	TX_FAR _VermilionGymAfterVictoryText
	db "@"

VermilionGymRematchText:
	TX_FAR _VermilionGymRematchText
	db "@"
	
VermilionGymCantRematchYetText:
	TX_FAR _VermilionGymCantRematchYetText
	db "@" 

VermilionGymHowManyBadgesText0:
	TX_FAR _VermilionGymHowManyBadgesText0
	db "@" 
	
VermilionGymHowManyBadgesText:
	TX_FAR _VermilionGymHowManyBadgesText
	db "@" 

VermilionGymText4:
	TX_FAR _VermilionGymAfterVictoryText
	db "@"

VermilionGymText5:
	TX_FAR _VermilionGymAfterRematchText
	db "@"

VermilionGymText6:
	TX_FAR _TM34NoRoomText
	db "@"

VermilionGymWinText:
	TX_FAR _VermilionGymWinText
	TX_SFX_LEVEL_UP ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	TX_FAR _VermilionGymText_5c4c1
	db "@"

VermilionGymRematchWinText:
	TX_FAR _VermilionGymRematchWinText
	db "@" 

	
VermilionGymText2:
	TX_ASM
	ld hl, VermilionGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

VermilionGymBattleText1:
	TX_FAR _VermilionGymBattleText1
	db "@"

VermilionGymEndBattleText1:
	TX_FAR _VermilionGymEndBattleText1
	db "@"

VermilionGymAfterBattleText1:
	TX_FAR _VermilionGymAfterBattleText1
	db "@"

VermilionGymText3:
	TX_ASM
	CheckEvent EVENT_FOUND_LARS_IN_CAVE
	jr nz, .LeaderIsHere
	ld hl, VermilionGymWelcomeEmpty
	jr .done
.LeaderIsHere
	ld hl, VermilionGymWelcomeHere
.done
	call PrintText
	jp TextScriptEnd

VermilionGymWelcomeHere:
	TX_FAR _VermilionGymWelcomeHere
	db "@"
	
VermilionGymWelcomeEmpty:
	TX_FAR _VermilionGymWelcomeEmpty
	db "@"

