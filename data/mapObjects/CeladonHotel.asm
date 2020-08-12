CeladonHotel_Object:
	db $2e ; border block

	db 2 ; warps
	warp  2,  7, 6, -1
	warp  3,  7, 6, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_OLD_MEDIUM_WOMAN,  2,  2, STAY, DOWN, 1 ; person
	object SPRITE_FOULARD_WOMAN,  2,  4, STAY, UP, 2 ; person
	object SPRITE_BLACK_HAIR_BOY_2,  2,  5, STAY, UP, 3 ; person

	; warp-to
	warp_to  2,  7, CELADON_HOTEL_WIDTH
	warp_to  3,  7, CELADON_HOTEL_WIDTH
