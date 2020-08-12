GameCorner_Object:
	db $f ; border block

	db 2 ; warps
	warp  8, 17, 5, -1
	warp  9, 17, 5, -1

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to  8, 17, GAME_CORNER_WIDTH
	warp_to  9, 17, GAME_CORNER_WIDTH
