ViridianGym_Object:
	db $3 ; border block

	db 2 ; warps
	warp 6, 17, 4, VIRIDIAN_CITY
	warp 7, 17, 4, VIRIDIAN_CITY

	db 0 ; signs

	db 1 ; objects
	object SPRITE_BRUNETTE_GIRL, 6, 3, STAY, DOWN, 1, OPP_WYLDA, 1

	; warp-to
	warp_to 7, 17, VIRIDIAN_GYM_WIDTH
