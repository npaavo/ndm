VermilionGym_Object:
	db $3 ; border block

	db 2 ; warps
	warp 6, 17, 3, -1
	warp 7, 17, 3, -1

	db 0 ; signs

	db 1 ; objects
	object SPRITE_SWIMMER, 6, 4, STAY, DOWN, 1, OPP_LT_SURGE, 1

	; warp-to
	warp_to 6, 17, VERMILION_GYM_WIDTH
