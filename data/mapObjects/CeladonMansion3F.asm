CeladonMansion3F_Object:
	db $2e ; border block

	db 5 ; warps
	warp 2, 0, 0, CELADON_MANSION_ROOF
	warp 9, 2, 1, CELADON_MANSION_2F
	warp 22, 7, 3, CELADON_MANSION_2F
	warp 11, 8, 2, CELADON_MANSION_2F
	warp 16, 9, 1, CELADON_MANSION_ROOF

	db 1 ; signs
	sign 1, 13, 5 ; CeladonMansion3Text5

	db 0 ; objects
	;object SPRITE_BIKE_SHOP_GUY, 0, 4, STAY, UP, 1 ; person
	;object SPRITE_MART_GUY, 3, 4, STAY, UP, 2 ; person
	;object SPRITE_BLACK_HAIR_BOY_2, 0, 7, STAY, UP, 3 ; person
	;object SPRITE_LAPRAS_GIVER, 2, 3, STAY, NONE, 4 ; person

	; warp-to
	warp_to 2, 0, CELADON_MANSION_3F_WIDTH ; CELADON_MANSION_ROOF
	warp_to 9, 2, CELADON_MANSION_3F_WIDTH ; CELADON_MANSION_2F
	warp_to 22, 7, CELADON_MANSION_3F_WIDTH ; CELADON_MANSION_2F
	warp_to 11, 8, CELADON_MANSION_3F_WIDTH ; CELADON_MANSION_2F
	warp_to 16, 9, CELADON_MANSION_3F_WIDTH ; CELADON_MANSION_ROOF
