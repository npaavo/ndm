SaffronPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 11, 0, -1
	warp 4, 11, 1, -1

	db 0 ; signs

	db 4 ; objects
	object SPRITE_NURSE, 3, 5, STAY, DOWN, 1 ; person
	object SPRITE_FOULARD_WOMAN, 8, 9, STAY, NONE, 2 ; person
	object SPRITE_GENTLEMAN, 11, 8, STAY, UP, 3 ; person
	object SPRITE_SLOWBRO, 5, 7, STAY, DOWN, 4 ; person

	; warp-to
	warp_to 3, 11, SAFFRON_POKECENTER_WIDTH
	warp_to 4, 11, SAFFRON_POKECENTER_WIDTH
