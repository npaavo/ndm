Route1_Object:
	db $f ; border block

	db 1 ; warps
	warp 2, 33, 0, REDS_HOUSE_2F ; hidden cave

	db 1 ; signs
	sign 9, 27, 3 ; Route1Text3

	db 3 ; objects
	object SPRITE_BUG_CATCHER, 6, 28, STAY, RIGHT, 1 ; person
	object SPRITE_BUG_CATCHER, 15, 13, WALK, 0, 2 ; person
	object SPRITE_GIRL, 8, 18, WALK, 0, 4 ; person

	; warp-to (unused)
	warp_to 2, 33, ROUTE_1_WIDTH
