CeladonMansion1F_Object:
	db $2e ; border block

	db 3 ; warps
	warp 0, 7, 2, -1
	warp 1, 7, 2, -1
	warp 10, 0, 0, CELADON_MANSION_2F

	db 1 ; signs
	sign  9,  5, 5 ; CeladonMansion1Text5

	db 1 ; objects
	;object SPRITE_SLOWBRO, 0, 5, STAY, RIGHT, 1 ; person
	object SPRITE_OLD_MEDIUM_WOMAN, 2, 2, STAY, DOWN, 2 ; person
	;object SPRITE_CLEFAIRY, 1, 8, WALK, 2, 3 ; person
	;object SPRITE_SLOWBRO, 4, 4, WALK, 1, 4 ; person

	; warp-to
	warp_to 0, 7, CELADON_MANSION_1F_WIDTH
	warp_to 10, 0, CELADON_MANSION_1F_WIDTH
