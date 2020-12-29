OneHitKOEffect_:
	xor a
	dec a
	ld [wCriticalHitOrOHKO], a
	ld hl, wDamage
	ld a, $ff
	ld [hli], a
	ld [hl], a
	ld a, $2
	ld [wCriticalHitOrOHKO], a
	ret
