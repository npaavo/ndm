DrawHP:
; Draws the HP bar in the stats screen
	call GetPredefRegisters
	ld a, $1
	jr DrawHP_

DrawHP2:
; Draws the HP bar in the party screen
	call GetPredefRegisters
	ld a, $2

DrawHP_:
	ld [wHPBarType], a
	push hl
	ld a, [wLoadedMonHP]
	ld b, a
	ld a, [wLoadedMonHP + 1]
	ld c, a
	or b
	jr nz, .nonzeroHP
	xor a
	ld c, a
	ld e, a
	ld a, $6
	ld d, a
	jp .drawHPBarAndPrintFraction
.nonzeroHP
	ld a, [wLoadedMonMaxHP]
	ld d, a
	ld a, [wLoadedMonMaxHP + 1]
	ld e, a
	predef HPBarLength
	ld a, $6
	ld d, a
	ld c, a
.drawHPBarAndPrintFraction
	pop hl
	push de
	push hl
	push hl
	call DrawHPBar
	pop hl
	ld a, [hFlags_0xFFF6]
	bit 0, a
	jr z, .printFractionBelowBar
	ld bc, $9 ; right of bar
	jr .printFraction
.printFractionBelowBar
	ld bc, SCREEN_WIDTH + 1 ; below bar
.printFraction
	add hl, bc
	ld de, wLoadedMonHP
	lb bc, 2, 3
	call PrintNumber
	ld a, "/"
	ld [hli], a
	ld de, wLoadedMonMaxHP
	lb bc, 2, 3
	call PrintNumber
	pop hl
	pop de
	ret


; Predef 0x37
StatusScreen:
	call LoadMonData
	ld a, [wMonDataLocation]
	cp BOX_DATA
	jr c, .DontRecalculate
; mon is in a box or daycare
	ld a, [wLoadedMonBoxLevel]
	ld [wLoadedMonLevel], a
	ld [wCurEnemyLVL], a
	ld hl, wLoadedMonHPExp - 1
	ld de, wLoadedMonStats
	ld b, $1
	call CalcStats ; Recalculate stats
.DontRecalculate
	ld hl, wd72c
	set 1, [hl]
	ld a, $33
	ld [rNR50], a ; Reduce the volume
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	call UpdateSprites
	call LoadHpBarAndStatusTilePatterns
	ld de, BattleHudTiles1  ; source
	ld hl, vChars2 + $6d0 ; dest
	lb bc, BANK(BattleHudTiles1), $03
	call CopyVideoDataDouble ; ·│ :L and halfarrow line end
	ld de, BattleHudTiles2
	ld hl, vChars2 + $780
	lb bc, BANK(BattleHudTiles2), $01
	call CopyVideoDataDouble ; │
	ld de, BattleHudTiles3
	ld hl, vChars2 + $760
	lb bc, BANK(BattleHudTiles3), $02
	call CopyVideoDataDouble ; ─┘
	ld de, PTile
	ld hl, vChars2 + $720
	lb bc, BANK(PTile), (PTileEnd - PTile) / $8
	call CopyVideoDataDouble ; P (for PP), inline
	ld a, [hTilesetType]
	push af
	xor a
	ld [hTilesetType], a
	coord hl, 19, 1
	lb bc, 4, 10
	call DrawLineBox ; Draws the box around name, HP and status
	coord hl, 1, 0
	ld [hl], "№"
	inc hl
	ld [hl], "⠄" ; . after No ("." is a different one)

	
	
	;coord hl, 9, 15
	;lb bc, 2, 7
	;call DrawLineBox ; Draws the box around types, ID No. and OT
	;coord hl, 7, 6
	;ld de, Type1Text
	;call PlaceString ; "TYPE/"
	coord hl, 10, 3
	predef DrawHP
	ld hl, wStatusScreenHPBarColor
	call GetHealthBarColor
	ld b, SET_PAL_STATUS_SCREEN
	call RunPaletteCommand
	coord hl, 13, 2
	ld de, wLoadedMonStatus
	call PrintStatusCondition
	jr nz, .StatusWritten
	coord hl, 13, 2
	ld de, OKText
	call PlaceString ; "OK"
.StatusWritten
	;coord hl, 9, 6
	;ld de, StatusText
	;call PlaceString ; "STATUS/"
	coord hl, 9, 2
	call PrintLevel ; Pokémon level
	ld a, [wMonHIndex]
	ld [wd11e], a
	ld [wd0b5], a
	predef IndexToPokedex
	coord hl, 3, 0
	ld de, wd11e
	lb bc, LEADING_ZEROES | 1, 3
	call PrintNumber ; Pokémon no.
	coord hl, 11, 6
	predef PrintMonType
	ld hl, NamePointers2
	call .GetStringPointer
	ld d, h
	ld e, l
	coord hl, 9, 1
	call PlaceString ; Pokémon name
	;ld hl, OTPointers
	;call .GetStringPointer
	;ld d, h
	;ld e, l
	;coord hl, 12, 16
	;call PlaceString ; OT
	;coord hl, 12, 14
	;ld de, wLoadedMonOTID
	;lb bc, LEADING_ZEROES | 2, 5
	;call PrintNumber ; ID Number
	ld d, $0
	call PrintStatsBox
	
	; catch time
	coord hl, 1, 15
	
	;ld hl, OTPointers
	;call .GetStringPointer
	;ld d, h
	;ld e, l
	;coord hl, 12, 16
	;call PlaceString ; OT
	
	;text 
	ld de, CaptureNoText
	call PlaceString
	coord hl, 1, 16
	ld de, CaptureTimeText
	call PlaceString
	
	; capture number (OTName first 3 btyes BCD)
	ld hl, OTPointers
	call .GetStringPointer
	push hl 
	pop de 	
	coord hl, 11, 15
	ld c, $c3 ; BCD flags: 110 | 00011 : no leading zeroes, left-align | 3 byte size
	call PrintBCDNumber
	
	; capture time, OTName 4th, 5th, 6th byte 
	coord hl, 4, 16
	lb bc, 1, 3 ; 1 byte, 3 digits
	call PrintNumber
	
	inc hl
	inc hl
	inc de
	inc de
	lb bc, LEADING_ZEROES | 1, 2
	call PrintNumber
	inc hl
	inc hl
	inc de
	inc de
	lb bc, LEADING_ZEROES | 1, 2
	call PrintNumber	
	
	call Delay3
	call GBPalNormal
	coord hl, 1, 1
	call LoadFlippedFrontSpriteByMonIndex ; draw Pokémon picture
	ld a, [wcf91]
	call PlayCry ; play Pokémon cry
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ld [hTilesetType], a
	ret

.GetStringPointer
	ld a, [wMonDataLocation]
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMonDataLocation]
	cp DAYCARE_DATA
	ret z
	ld a, [wWhichPokemon]
	jp SkipFixedLengthTextEntries

OTPointers:
	dw wPartyMonOT
	dw wEnemyMonOT
	dw wBoxMonOT
	dw wDayCareMonOT

NamePointers2:
	dw wPartyMonNicks
	dw wEnemyMonNicks
	dw wBoxMonNicks
	dw wDayCareMonName

Type1Text:
	db "/", $4e

Type2Text:
	db "/", $4e

IDNoText:
	db $73, "№/", $4e

CaptureNoText:
	db "Capture №.@"

CaptureTimeText:
	db "at    h   m   s@"

OKText:
	db " OK@"

; Draws a line starting from hl high b and wide c
DrawLineBox:
	ld de, SCREEN_WIDTH ; New line
.PrintVerticalLine
	ld [hl], $78 ; │
	add hl, de
	dec b
	jr nz, .PrintVerticalLine
	ld [hl], $77 ; ┘
	dec hl
.PrintHorizLine
	ld [hl], $76 ; ─
	dec hl
	dec c
	jr nz, .PrintHorizLine
	ld [hl], $6f ; ← (halfarrow ending)
	ret

PTile: ; This is a single 1bpp "P" tile
	INCBIN "gfx/p_tile.1bpp"
PTileEnd:

PrintStatsBox:
	ld a, d
	and a ; a is 0 from the status screen
	jr nz, .DifferentBox
	coord hl, 0, 8
	ld b, 5
	ld c, 18
	call TextBoxBorder ; Draws the box
	ld bc, $0019 ; Number offset
	jr .PrintStats
.DifferentBox
	coord hl, 0, 8
	ld b, 5
	ld c, 18
	call TextBoxBorder
	coord hl, 11, 3
	ld bc, $0018
.PrintStats
	coord hl, 2, 9
	push hl
	ld de, StatsText
	pop hl
	call PlaceString
	coord hl, 2, 10
	ld de, StatsText2
	push hl
	call PlaceString
	pop hl
	
	lb bc, 2, 3	
	coord hl, 10, 9 ; Start printing stats from here
	ld de, wLoadedMonMaxHP
	call PrintStat
	ld de, wLoadedMonAttack
	call PrintStat
	ld de, wLoadedMonDefense
	call PrintStat
	ld de, wLoadedMonSpeed
	call PrintStat
	ld de, wLoadedMonSpecial
	call PrintStat
	
	; DVS OMG 
	lb bc, 1, 2	; print a 1-bit
	
	
	coord hl, 15, 10 	
	
	ld a, [wLoadedMonDVs]
	and %11110000
	swap a
	ld [wPlaceHolderDVs], a
	ld de, wPlaceHolderDVs
	call PrintStat		
	
	ld a, [wLoadedMonDVs]
	and $f
	ld [wPlaceHolderDVs+1], a
	ld de, wPlaceHolderDVs+1
	call PrintStat	
	
	ld a, [wLoadedMonDVs+1]
	and %11110000
	swap a
	ld [wPlaceHolderDVs+2], a
	ld de, wPlaceHolderDVs+2
	call PrintStat		
	
	ld a, [wLoadedMonDVs+1]
	and $f
	ld [wPlaceHolderDVs+3], a
	ld de, wPlaceHolderDVs+3	
	call PrintNumber
	
	;deep inhale ok for HP
	push bc
	ld hl, wLoadedMonDVs 
	ld a, [hl]  ; Atk IV
	swap a
	and $1
	sla a
	sla a
	sla a
	ld b, a
	ld a, [hli] ; Def IV
	and $1
	sla a
	sla a
	add b
	ld b, a
	ld a, [hl] ; Spd IV
	swap a
	and $1
	sla a
	add b
	ld b, a
	ld a, [hl] ; Spc IV
	and $1
	add b      ; HP IV: LSB of the other 4 IVs
	
	ld [wPlaceHolderDVs+4], a	
	pop bc
	coord hl, 15, 9	
	ld de, wPlaceHolderDVs+4	
	
	jp PrintNumber

PrintStat:
	push hl
	call PrintNumber
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de ; move hl down two screen lines
	ret

StatsText:
	db   "Max HP      (  )"
	next "Defense     (  )"
	next "Special     (  )@"
	
StatsText2: ; alternates because dumb
	db 	 "Attack      (  )"
	next "Speed       (  )@"

StatusScreen2:
	ld a, [hTilesetType]
	push af
	xor a
	ld [hTilesetType], a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld bc, NUM_MOVES + 1
	ld hl, wMoves
	call FillMemory
	ld hl, wLoadedMonMoves
	ld de, wMoves
	ld bc, NUM_MOVES
	call CopyData
	callab FormatMovesString
	coord hl, 9, 2
	lb bc, 2, 10
	call ClearScreenArea ; Clear under name
	coord hl, 19, 3
	ld [hl], $78
	coord hl, 0, 8
	ld b, 8
	ld c, 18
	call TextBoxBorder ; Draw move container
	coord hl, 2, 9
	ld de, wMovesString
	call PlaceString ; Print moves
	ld a, [wNumMovesMinusOne]
	inc a
	ld c, a
	ld a, $4
	sub c
	ld b, a ; Number of moves ?
	coord hl, 17, 10
	ld de, SCREEN_WIDTH * 2
	ld a, $72 ; special P tile id
	call StatusScreen_PrintPP ; Print "PP"
	ld a, b
	and a
	jr z, .InitPP
	ld c, a
	ld a, "-"
	call StatusScreen_PrintPP ; Fill the rest with --
.InitPP
	ld hl, wLoadedMonMoves
	coord de, 10, 10
	ld b, 0
.PrintPP
	ld a, [hli]
	and a
	jr z, .PPDone
	push bc
	push hl
	push de
	ld hl, wCurrentMenuItem
	ld a, [hl]
	push af
	ld a, b
	ld [hl], a
	push hl
	callab GetMaxPP
	pop hl
	pop af
	ld [hl], a
	pop de
	pop hl
	push hl
	ld bc, wPartyMon1PP - wPartyMon1Moves - 1
	add hl, bc
	ld a, [hl]
	and $3f
	ld [wStatusScreenCurrentPP], a
	ld h, d
	ld l, e
	push hl
	ld de, wStatusScreenCurrentPP
	lb bc, 1, 2
	call PrintNumber
	ld a, "/"
	ld [hli], a
	ld de, wMaxPP
	lb bc, 1, 2
	call PrintNumber
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ld d, h
	ld e, l
	pop hl
	pop bc
	inc b
	ld a, b
	cp $4
	jr nz, .PrintPP
.PPDone
	coord hl, 9, 3
	ld de, StatusScreenExpText
	call PlaceString
	ld a, [wLoadedMonLevel]
	push af
	cp MAX_LEVEL
	jr z, .Level100
	inc a
	ld [wLoadedMonLevel], a ; Increase temporarily if not 100
.Level100
	coord hl, 14, 4
	ld [hl], $70 ; 1-tile "to"
	inc hl
	inc hl
	call PrintLevel
	pop af
	ld [wLoadedMonLevel], a
	ld de, wLoadedMonExp
	coord hl, 12, 4
	lb bc, 3, 7
	;call PrintNumber ; exp
	call CalcExpToLevelUp
	ld de, wLoadedMonExp
	coord hl, 7, 4
	lb bc, 3, 7
	call PrintNumber ; exp needed to level up
	;coord hl, 9, 0
	;call StatusScreen_ClearName
	;coord hl, 9, 1
	;call StatusScreen_ClearName
	ld a, [wMonHIndex]
	ld [wd11e], a
	call GetMonName
	coord hl, 9, 1
	call PlaceString
	ld a, $1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3
	call WaitForTextScrollButtonPress ; wait for button
	pop af
	ld [hTilesetType], a
	ld hl, wd72c
	res 1, [hl]
	ld a, $77
	ld [rNR50], a
	call GBPalWhiteOut
	jp ClearScreen

CalcExpToLevelUp:
	ld a, [wLoadedMonLevel]
	cp MAX_LEVEL
	jr z, .atMaxLevel
	inc a
	ld d, a
	callab CalcExperience
	ld hl, wLoadedMonExp + 2
	ld a, [hExperience + 2]
	sub [hl]
	ld [hld], a
	ld a, [hExperience + 1]
	sbc [hl]
	ld [hld], a
	ld a, [hExperience]
	sbc [hl]
	ld [hld], a
	ret
.atMaxLevel
	ld hl, wLoadedMonExp
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

StatusScreenExpText:
	db   "NEXT LEVEL@"

StatusScreen_ClearName:
	ld bc, 10
	ld a, " "
	jp FillMemory

StatusScreen_PrintPP:
; print PP or -- c times, going down two rows each time
	ld [hli], a
	ld [hld], a
	add hl, de
	dec c
	jr nz, StatusScreen_PrintPP
	ret
