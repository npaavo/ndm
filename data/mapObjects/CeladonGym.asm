CeladonGym_Object:
	db $17 ; border block

	db 2 ; warps
	warp 2, 17, 4, -1
	warp 3, 17, 4, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_LORELEI, 5, 9, STAY, LEFT, 1, OPP_MAXINE, 1
	object SPRITE_CABLE_CLUB_WOMAN, 5, 16, STAY, LEFT, 3 ; person
	object SPRITE_OAK_AIDE, 14, 5, STAY, UP, 4 ; person

	; warp-to
	warp_to 2, 17, CELADON_GYM_WIDTH
	warp_to 3, 17, CELADON_GYM_WIDTH
