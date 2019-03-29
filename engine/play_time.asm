TrackPlayTime:
	call CountDownIgnoreInputBitReset
	ld a, [wd732]
	bit 0, a
	ret z
	ld a, [wPlayTimeMaxed]
	and a
	ret nz
	ld a, [wPlayTimeFrames]
	inc a
	ld [wPlayTimeFrames], a
	cp 60
	ret nz
	xor a
	ld [wPlayTimeFrames], a
	ld a, [wPlayTimeSeconds]
	inc a
	ld [wPlayTimeSeconds], a
	cp 60
	ret nz
	xor a
	ld [wPlayTimeSeconds], a
	ld a, [wPlayTimeMinutes]
	inc a
	ld [wPlayTimeMinutes], a
	cp 20
	call z, NDMSetRepeatingEvents ; on 20, set repeating events
	cp 40
	call z, NDMSetRepeatingEvents ; on 40, set repeating events
	cp 60
	ret nz
	xor a
	ld [wPlayTimeMinutes], a
	call NDMSetRepeatingEvents ; on 0, too!
	ld a, [wPlayTimeHours]
	inc a
	ld [wPlayTimeHours], a
	cp $ff
	ret nz
	ld a, $ff
	ld [wPlayTimeMaxed], a
	ret

CountDownIgnoreInputBitReset:
	ld a, [wIgnoreInputCounter]
	and a
	jr nz, .asm_18e40
	ld a, $ff
	jr .asm_18e41
.asm_18e40
	dec a
.asm_18e41
	ld [wIgnoreInputCounter], a
	and a
	ret nz
	ld a, [wd730]
	res 1, a
	res 2, a
	bit 5, a
	res 5, a
	ld [wd730], a
	ret z
	xor a
	ld [hJoyPressed], a
	ld [hJoyHeld], a
	ret

; MOD: these event flags are SET every 30 minutes of play time!
; Put stuff here that you want to happen regularly, like being
; able to rematch key trainers (i.e. gym leaders)

NDMSetRepeatingEvents:
	ResetEventRange EVENT_CANT_REMATCH_GYM_0, EVENT_CANT_REMATCH_GYM_7
	ret
