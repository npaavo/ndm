const_value = -1
	const MOVE_NIDORINO_RIGHT
	const MOVE_GENGAR_RIGHT
	const MOVE_GENGAR_LEFT

ANIMATION_END EQU 80

const_value = 3
	const GENGAR_INTRO_TILES1
	const GENGAR_INTRO_TILES2
	const GENGAR_INTRO_TILES3

PlayIntro:
	xor a
	ld [hJoyHeld], a
	inc a
	ld [H_AUTOBGTRANSFERENABLED], a
	call PlayShootingStar
	;call PlayIntroScene
	call GBFadeOutToWhite
	xor a
	ld [hSCX], a
	ld [H_AUTOBGTRANSFERENABLED], a
	call ClearSprites
	call DelayFrame
	ret

PlayIntroScene:
	ret

AnimateIntroNidorino:
	ret

UpdateIntroNidorinoOAM:
	ret

InitIntroNidorinoOAM:
	ret

IntroClearScreen:
	ld hl, vBGMap1
	ld bc, BG_MAP_WIDTH * SCREEN_HEIGHT
	jr IntroClearCommon

IntroClearMiddleOfScreen:
; clear the area of the tile map between the black bars on the top and bottom
	coord hl, 0, 4
	ld bc, SCREEN_WIDTH * 10

IntroClearCommon:
	ld [hl], 0
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, IntroClearCommon
	ret

IntroPlaceBlackTiles:
	ld a, 1
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	ret

IntroMoveMon:
	ret

IntroCopyTiles:
	coord hl, 13, 7

CopyTileIDsFromList_ZeroBaseTileID:
	ld c, 0
	predef_jump CopyTileIDsFromList

PlayMoveSoundB:
; unused
	predef GetMoveSoundB
	ld a, b
	jp PlaySound

LoadIntroGraphics:
	ld hl, FightIntroBackMon
	ld de, vChars2
	ld bc, FightIntroBackMonEnd - FightIntroBackMon
	ld a, BANK(FightIntroBackMon)
	call FarCopyData2
	ld hl, GameFreakIntro
	ld de, vChars2 + (FightIntroBackMonEnd - FightIntroBackMon)
	ld bc, GameFreakIntroEnd - GameFreakIntro
	ld a, BANK(GameFreakIntro)
	call FarCopyData2
	ld hl, GameFreakIntro
	ld de, vChars1
	ld bc, GameFreakIntroEnd - GameFreakIntro
	ld a, BANK(GameFreakIntro)
	call FarCopyData2
	ld hl, FightIntroFrontMon
	ld de, vChars0
	ld bc, FightIntroFrontMonEnd - FightIntroFrontMon
	ld a, BANK(FightIntroFrontMon)
	jp FarCopyData2

PlayShootingStar:
	ld a, BANK(Music_IntroBattle)
	ld [wAudioROMBank], a
	ld [wAudioSavedROMBank], a
	ld a, MUSIC_INTRO_BATTLE
	ld [wNewSoundID], a
	call PlaySound
	ld b, SET_PAL_GAME_FREAK_INTRO
	call RunPaletteCommand
	callba LoadCopyrightAndTextBoxTiles
	ldPal a, BLACK, DARK_GRAY, LIGHT_GRAY, WHITE
	ld [rBGP], a
	ld c, 180
	call DelayFrames
	call ClearScreen
	call DisableLCD
	xor a
	ld [wCurOpponent], a
	call IntroDrawBlackBars
	call LoadIntroGraphics
	call EnableLCD
	ld hl, rLCDC
	res 5, [hl]
	set 3, [hl]
	ld c, 64
	call DelayFrames
	callba AnimateShootingStar
	push af
	pop af
	jr c, .next ; skip the delay if the user interrupted the animation
	ld c, 40
	call DelayFrames
.next
	;ld a, BANK(Music_IntroBattle)
	;ld [wAudioROMBank], a
	;ld [wAudioSavedROMBank], a
	;ld a, MUSIC_INTRO_BATTLE
	;ld [wNewSoundID], a
	;call PlaySound
	call IntroClearMiddleOfScreen
	call ClearSprites
	jp Delay3

IntroDrawBlackBars:
; clear the screen and draw black bars on the top and bottom
	call IntroClearScreen
	coord hl, 0, 0
	ld c, SCREEN_WIDTH * 4
	call IntroPlaceBlackTiles
	coord hl, 0, 14
	ld c, SCREEN_WIDTH * 4
	call IntroPlaceBlackTiles
	ld hl, vBGMap1
	ld c,  BG_MAP_WIDTH * 4
	call IntroPlaceBlackTiles
	ld hl, vBGMap1 + BG_MAP_WIDTH * 14
	ld c,  BG_MAP_WIDTH * 4
	jp IntroPlaceBlackTiles

EmptyFunc4:
	ret

IntroNidorinoAnimation0:
	db 0, 0
	db ANIMATION_END

IntroNidorinoAnimation1:
; This is a sequence of pixel movements for part of the Nidorino animation. This
; list describes how Nidorino should hop.
; First byte is y movement, second byte is x movement
	db  0, 0
	db -2, 2
	db -1, 2
	db  1, 2
	db  2, 2
	db ANIMATION_END

IntroNidorinoAnimation2:
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db  0,  0
	db -2, -2
	db -1, -2
	db  1, -2
	db  2, -2
	db ANIMATION_END

IntroNidorinoAnimation3:
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db   0, 0
	db -12, 6
	db  -8, 6
	db   8, 6
	db  12, 6
	db ANIMATION_END

IntroNidorinoAnimation4:
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db  0,  0
	db -8, -4
	db -4, -4
	db  4, -4
	db  8, -4
	db ANIMATION_END

IntroNidorinoAnimation5:
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db  0, 0
	db -8, 4
	db -4, 4
	db  4, 4
	db  8, 4
	db ANIMATION_END

IntroNidorinoAnimation6:
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db 0, 0
	db 2, 0
	db 2, 0
	db 0, 0
	db ANIMATION_END

IntroNidorinoAnimation7:
; This is a sequence of pixel movements for part of the Nidorino animation.
; First byte is y movement, second byte is x movement
	db -8, -16
	db -7, -14
	db -6, -12
	db -4, -10
	db ANIMATION_END

GameFreakIntro:
	INCBIN "gfx/gamefreak_intro.2bpp"
	INCBIN "gfx/gamefreak_logo.2bpp"
	rept 16
	db $00 ; blank tile
	endr
GameFreakIntroEnd:

FightIntroBackMon:
	INCBIN "gfx/intro_fight.2bpp"
FightIntroBackMonEnd:

FightIntroFrontMon:

IF DEF(_RED)
	INCBIN "gfx/red/intro_nido_1.2bpp"
FightIntroFrontMon2:
	INCBIN "gfx/red/intro_nido_2.2bpp"
FightIntroFrontMon3:
	INCBIN "gfx/red/intro_nido_3.2bpp"
ENDC

IF DEF(_BLUE)
	INCBIN "gfx/blue/intro_purin_1.2bpp"
FightIntroFrontMon2:
	INCBIN "gfx/blue/intro_purin_2.2bpp"
FightIntroFrontMon3:
	INCBIN "gfx/blue/intro_purin_3.2bpp"
ENDC

FightIntroFrontMonEnd:

	ds $10 ; blank tile
