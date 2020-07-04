CeruleanPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 7, 0, -1
	warp 4, 7, 0, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 5, 5, WALK, 0, 3 ; person
	object SPRITE_GENTLEMAN, 4, 3, STAY, DOWN, 2 ; person

	; warp-to
	warp_to 3, 7, CERULEAN_POKECENTER_WIDTH
	warp_to 4, 7, CERULEAN_POKECENTER_WIDTH
