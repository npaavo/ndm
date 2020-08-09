CeladonPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 7, 7, 3, -1
	warp 8, 7, 3, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_NURSE, 7, 1, STAY, DOWN, 1 ; person
	object SPRITE_GENTLEMAN, 11, 3, WALK, 2, 2 ; person
	object SPRITE_FOULARD_WOMAN, 14, 5, WALK, 0, 3 ; person

	; warp-to
	warp_to 7, 7, CELADON_POKECENTER_WIDTH
	warp_to 8, 7, CELADON_POKECENTER_WIDTH
