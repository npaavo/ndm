HealParty:
; Restore HP and PP.

	ld hl, wPartySpecies
	ld de, wPartyMon1HP
.healmon
	ld a, [hli]
	cp $ff
	jr z, .done

	push hl
	push de

	ld hl, wPartyMon1Status - wPartyMon1HP
	add hl, de
	xor a
	ld [hl], a

	push de
	ld b, NUM_MOVES ; A Pokémon has 4 moves
.pp
	ld hl, wPartyMon1Moves - wPartyMon1HP
	add hl, de

	ld a, [hl]
	and a
	jr z, .nextmove

	dec a
	ld hl, wPartyMon1PP - wPartyMon1HP
	add hl, de

	push hl
	push de
	push bc

	ld hl, Moves
	ld bc, MoveEnd - Moves
	call AddNTimes
	ld de, wcd6d
	ld a, BANK(Moves)
	call FarCopyData
	ld a, [wcd6d + 5] ; PP is byte 5 of move data

	pop bc
	pop de
	pop hl

	inc de
	push bc
	ld b, a
	ld a, [hl]
	and $c0
	add b
	ld [hl], a
	pop bc

.nextmove
	dec b
	jr nz, .pp
	pop de

	ld hl, wPartyMon1MaxHP - wPartyMon1HP
	add hl, de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a

	pop de
	pop hl

	push hl
	ld bc, wPartyMon2 - wPartyMon1
	ld h, d
	ld l, e
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	jr .healmon

.done
	xor a
	ld [wWhichPokemon], a
	ld [wd11e], a

	ld a, [wPartyCount]
	ld b, a
.ppup
	push bc
	call RestoreBonusPP
	pop bc
	ld hl, wWhichPokemon
	inc [hl]
	dec b
	jr nz, .ppup
	ret



HealPartyPPOnly:
; MOD Restore PP, called at the end of every battle now

;todo : actually cut out the part where HP is restored

	ld hl, wPartySpecies
	ld de, wPartyMon1HP
.healmon
	ld a, [hli] ; a = species, hl incremeneted to HP 
	cp $ff ; compare a to 255 (FF)
	jr z, .done ;; if species is FF, end (i think this counts as "end of party"?)

	push hl ; stack: HP
	push de ; stack: HP, HP

	ld hl, wPartyMon1Status - wPartyMon1HP ; hl = distance from HP to STATUS
	add hl, de ; hl is now PartyHP + dist to status
	xor a ; zero out a
	;ld [hl], a ; cure status 

	push de ;stack: HP, HP, HP?
	ld b, NUM_MOVES ; A Pokémon has 4 moves
.pp
	ld hl, wPartyMon1Moves - wPartyMon1HP ; HL is now distance from HP to MOVES
	add hl, de ; HL is now moves pointer

	ld a, [hl] ; a is now Moves 
	and a ; 
	jr z, .nextmove

	dec a
	ld hl, wPartyMon1PP - wPartyMon1HP
	add hl, de

	push hl
	push de
	push bc

	ld hl, Moves
	ld bc, MoveEnd - Moves
	call AddNTimes
	ld de, wcd6d
	ld a, BANK(Moves)
	call FarCopyData
	ld a, [wcd6d + 5] ; PP is byte 5 of move data

	pop bc
	pop de
	pop hl

	inc de
	push bc
	ld b, a
	ld a, [hl]
	and $c0
	add b
	ld [hl], a
	pop bc

.nextmove
	dec b
	jr nz, .pp
	pop de

	ld hl, wPartyMon1MaxHP - wPartyMon1HP
	add hl, de
	ld a, [hli]
	;ld [de], a ; heal HP?
	inc de
	ld a, [hl]
	;ld [de], a ; no this one heals HP

	pop de
	pop hl

	push hl
	ld bc, wPartyMon2 - wPartyMon1
	ld h, d
	ld l, e
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	jr .healmon

.done
	xor a
	ld [wWhichPokemon], a
	ld [wd11e], a

	ld a, [wPartyCount]
	ld b, a
	ret