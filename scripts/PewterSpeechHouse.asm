
; since this room will never be accessed
; directly from the gym, I'm recycling
; wPewterGymCurScript for the active 
; script pointer, pls no kill 


PewterSpeechHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PewterSpeechHouse_ScriptPointers
	ld a, [wPewterGymCurScript]
	jp CallFunctionInTable

PewterSpeechHouse_ResetInputs:
	xor a
	ld [wJoyIgnore], a
	ld [wPewterGymCurScript], a
	ret

PewterSpeechHouse_ScriptPointers:
	dw PSHRivalWalkupScript
	dw PSHRivalFightScript
	dw PSHRivalExitScript
	dw PSHRivalVanishScript
	dw PSHRet
	
PSHRet:
	ret

; tiles that trigger the encounter
CoordsData_PSH:
	db $9,$2
	db $9,$3
	db $FF
	
PSHRivalWalkupScript: 
	CheckEvent EVENT_FOUGHT_RIVAL_PEWTER_CITY
	ret nz	
	ld hl, CoordsData_PSH
	call ArePlayerCoordsInArray
	ret nc ; if not in area, skip
	ld a, $ff
	ld [wNewSoundID], a ;end current sound/music
	call PlaySound
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL 
	call PlayMusic ;  BANanananana rival
	ld a, [wCoordIndex]
	ld [$ffdb], a ; looks important, better not touch it!
	ld a, HS_PSH_RIVAL 
	ld [wMissableObjectIndex], a
	predef ShowObject
	call Delay3
	ld a, $1
	ld [H_SPRITEINDEX], a
	call SetSpriteMovementBytesToFF
	xor a
	ld [hJoyHeld], a
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, [wXCoord]
	cp $3
	jr nz, .RSide
	ld de, MovementData_PSH_botR
	jr .done 
.RSide
	ld de, MovementData_PSH_botL
.done
	call MoveSprite
	ld a, $1
	ld [wPewterGymCurScript], a ; move on to the next script
	ret

PSHRivalVanishScript:
	ld a, [wd730]
	bit 0, a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, HS_PSH_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	call PlayDefaultMusic
	ld a, $4
	ld [wPewterGymCurScript], a
	SetEvent EVENT_FOUGHT_RIVAL_PEWTER_CITY
	ret

MovementData_PSH_topL:
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_UP

MovementData_PSH_topR: 
	db NPC_MOVEMENT_UP
	
MovementData_PSH_botR:
	db NPC_MOVEMENT_UP
	
MovementData_PSH_botL:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP	
	db $FF

PSHRivalFightScript:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, [wXCoord] ; rotate rival and player to face each other
	cp $3
	jr nz, .cont	
	ld a, SPRITE_FACING_LEFT
	ld [wPlayerDirection], a
	ld a, SPRITE_FACING_RIGHT
	ld [hSpriteFacingDirection], a
	ld a, $1
	ld [H_SPRITEINDEX], a
	call SetSpriteFacingDirectionAndDelay
.cont	
	call PSHPlayerFaceRival
	xor a
	ld [wJoyIgnore], a
	ld a, $1
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID ; show textpointer 1
	call Delay3
	ld a, OPP_SONY1
	ld [wCurOpponent], a
	; select which team to use during the encounter
	ld a, [wRivalStarter]
	cp STARTER2
	jr nz, .NotSquirtle
	ld a, $1;7
	jr .done
.NotSquirtle
	cp STARTER3
	jr nz, .Charmander
	ld a, $2;8
	jr .done
.Charmander
	ld a, $3;9
.done
	ld [wTrainerNo], a ; set trainer encounter based on starter

	call PSHPlayerFaceRival ; again? 
	ld a, $2
	ld [wPewterGymCurScript], a ; set script to post-fight
	ret

PSHRivalExitScript: 
	ld a, [wIsInBattle]
	cp $ff
	jp z, PewterSpeechHouse_ResetInputs
	call PSHPlayerFaceRival
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, $2
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID ; show textpointer 2
	ld a, $1
	ld [H_SPRITEINDEX], a
	call SetSpriteMovementBytesToFF
	ld a, [wXCoord]
	cp $3
	jr nz, .RSide
	ld de, MovementData_PSH_topR
	jr .done 
.RSide
	ld de, MovementData_PSH_topL
.done
	ld a, $1
	ld [H_SPRITEINDEX], a
	call MoveSprite
	ld a, $ff
	ld [wNewSoundID], a
	call PlaySound
	callba Music_RivalAlternateStart
	ld a, $3
	ld [wPewterGymCurScript], a
	ret

PSHPlayerFaceRival:
	ld a, [wXCoord]
	cp $3
	jr nz, .FaceDown
	ld a, PLAYER_DIR_LEFT
	ld [wPlayerMovingDirection], a
	ld a, SPRITE_FACING_RIGHT
	jr .Apply
.FaceDown
	xor a ; SPRITE_FACING_DOWN
.Apply
	ld [hSpriteFacingDirection], a
	ld a, $2
	ld [H_SPRITEINDEX], a
	jp SetSpriteFacingDirectionAndDelay
	

PewterSpeechHouse_TextPointers:
	dw PewterHouse2Text1
	dw PewterHouse2Text2

PewterHouse2Text1:
	TX_ASM
	ld hl, PSHRivalBeforeBattleText
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, PSHRivalDefeatedText
	ld de, PSHRivalWonText
	call SaveEndBattleTextPointers
	jp TextScriptEnd

PSHRivalBeforeBattleText: 
	TX_FAR _PSHRivalBeforeBattleText
	db "@"
	
PSHRivalDefeatedText: 
	TX_FAR _PSHRivalDefeatedText
	db "@"
	
PSHRivalWonText: 
	TX_FAR _PSHRivalWonText
	db "@"
	
PewterHouse2Text2:
	TX_FAR _PewterHouse2Text2
	db "@"
