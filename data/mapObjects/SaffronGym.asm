SaffronGym_Object:
	db $2e ; border block

	db 2 ; warps
	warp 8, 17, 4, -1
	warp 9, 17, 4, -1

	db 0 ; signs

	db 2 ; objects
	object SPRITE_GENTLEMAN, 16, 3, STAY, DOWN, 1, OPP_HUGH, 1
	object SPRITE_CABLE_CLUB_WOMAN, 10, 16, STAY, LEFT, 3 ; person

	; warp-to
	warp_to 8, 17, SAFFRON_GYM_WIDTH
	warp_to 9, 17, SAFFRON_GYM_WIDTH
