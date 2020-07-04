PewterPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 7, 4, -1
	warp 4, 7, 4, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_CLEFAIRY, 1, 3, WALK, 0, 3 ; jigglypuff
	object SPRITE_BLACK_HAIR_BOY_1, 5, 5, WALK, 1, 2 ; person

	; warp-to
	warp_to 3, 7, PEWTER_POKECENTER_WIDTH
	warp_to 4, 7, PEWTER_POKECENTER_WIDTH
