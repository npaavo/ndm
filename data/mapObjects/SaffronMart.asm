SaffronMart_Object:
	db $0 ; border block

	db 2 ; warps
	warp 5, 7, 2, -1
	warp 6, 7, 3, -1

	db 0 ; signs

	db 4 ; objects
	object SPRITE_MART_GUY, 0, 5, STAY, RIGHT, 1 ; person
	object SPRITE_MART_GUY, 0, 7, STAY, RIGHT, 2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 4, 2, STAY, NONE, 3 ; person
	object SPRITE_LASS, 6, 5, WALK, 0, 4 ; person

	; warp-to
	warp_to 5, 7, SAFFRON_MART_WIDTH
	warp_to 6, 7, SAFFRON_MART_WIDTH
