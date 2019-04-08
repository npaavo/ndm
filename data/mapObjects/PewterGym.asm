PewterGym_Object:
	db $3 ; border block

	db 2 ; warps
	warp 6, 17, 0, PEWTER_CITY
	warp 7, 17, 0, PEWTER_CITY

	db 0 ; signs

	db 2 ; objects
	object SPRITE_FISHER, 6, 3, STAY, DOWN, 1, OPP_BROCK, 1
	object SPRITE_CABLE_CLUB_WOMAN, 8, 15, STAY, LEFT, 3 ; person

	; warp-to
	warp_to 6, 17, PEWTER_GYM_WIDTH
	warp_to 7, 17, PEWTER_GYM_WIDTH
