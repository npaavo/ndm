CeruleanGym_Object:
	db $3 ; border block

	db 2 ; warps
	warp 6, 17, 1, -1
	warp 7, 17, 1, -1

	db 0 ; signs

	db 2 ; objects
	object SPRITE_BIKE_SHOP_GUY, 6, 4, STAY, DOWN, 1, OPP_TOBIAS, 1
	object SPRITE_CABLE_CLUB_WOMAN, 8, 15, STAY, LEFT, 3 ; person

	; warp-to
	warp_to 6, 17, CERULEAN_GYM_WIDTH
