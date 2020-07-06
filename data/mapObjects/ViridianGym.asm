ViridianGym_Object:
	db $3 ; border block

	db 2 ; warps
	warp 6, 17, 4, VIRIDIAN_CITY
	warp 7, 17, 4, VIRIDIAN_CITY

	db 0 ; signs

	db 2 ; objects
	object SPRITE_BRUNETTE_GIRL, 6, 3, STAY, UP, 1, OPP_WYLDA, 1
	object SPRITE_CABLE_CLUB_WOMAN, 8, 15, STAY, LEFT, 3 ; person

	; warp-to
	warp_to 7, 17, VIRIDIAN_GYM_WIDTH
