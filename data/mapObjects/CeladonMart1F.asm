CeladonMart1F_Object:
	db $f ; border block

	db 4 ; warps
	warp 4, 7, 0, -1
	warp 5, 7, 0, -1
	warp 6, 7, 1, -1
	warp 7, 7, 1, -1

	db 0 ; signs
	;sign 11, 4, 2 ; CeladonMart1Text2

	db 5 ; objects
	object SPRITE_MART_GUY, 5, 3, STAY, DOWN, 1 ; person
	object SPRITE_MART_GUY, 6, 3, STAY, DOWN, 2 ; person
	object SPRITE_FAT_BALD_GUY, 16, 4, STAY, NONE, 3 ; person
	object SPRITE_GIRL, 1, 4, WALK, 0, 4 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 11, 3, STAY, UP, 5 ; person

	; warp-to
	warp_to 5, 7, CELADON_MART_1F_WIDTH
	warp_to 6, 7, CELADON_MART_1F_WIDTH
