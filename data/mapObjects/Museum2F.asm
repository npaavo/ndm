Museum2F_Object:
	db $3 ; border block

	db 2 ; warps
	warp 3, 9, 1, MUSEUM_1F
	warp 13, 1, 2, PEWTER_SPEECH_HOUSE

	db 0 ; signs

	db 1 ; objects
	object SPRITE_FISHER, 13, 3, STAY, DOWN, 1 ; person

	; warp-to
	warp_to 3, 9, MUSEUM_2F_WIDTH ; MUSEUM_1F
	warp_to 12, 1, MUSEUM_2F_WIDTH ; MUSEUM_1F
