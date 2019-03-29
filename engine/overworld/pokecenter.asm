DisplayPokemonCenterDialogue_:
	call SaveScreenTilesToBuffer1 ; save screen
	ld hl, PokemonCenterWelcomeText
	call PrintText
	call SetLastBlackoutMap
	ld a, $18
	ld [wSpriteStateData1 + $12], a ; make the nurse turn to face the machine
	call Delay3
	predef HealParty
	callba AnimateHealingMachine ; do the healing machine animation
	xor a
	ld [wAudioFadeOutControl], a
	ld a, [wAudioSavedROMBank]
	ld [wAudioROMBank], a
	ld a, [wMapMusicSoundID]
	ld [wLastMusicSoundID], a
	ld [wNewSoundID], a
	call PlaySound
	ld a, $14
	ld [wSpriteStateData1 + $12], a ; make the nurse bow
	ld c, a
	call DelayFrames
	jr .done
.declinedHealing
	call LoadScreenTilesFromBuffer1 ; restore screen
.done
	ld hl, PokemonCenterFarewellText
	call PrintText
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	jp UpdateSprites	

PokemonCenterWelcomeText:
	TX_FAR _PokemonCenterWelcomeText
	db "@"

PokemonCenterFarewellText:
	TX_DELAY
	TX_FAR _PokemonCenterFarewellText
	db "@"
