Route6_Object:
	db $f ; border block

	db 5 ; warps
	warp 9, 1, 2, ROUTE_6_GATE
	warp 10, 1, 2, ROUTE_6_GATE
	warp 9, 5, 0, ROUTE_6_GATE
	warp 2, 9, 2, DIGLETTS_CAVE
	warp 2, 25, 3, DIGLETTS_CAVE

	db 1 ; signs
	sign 19, 15, 7 ; Route6Text7

	db 6 ; objects
	object SPRITE_BLACK_HAIR_BOY_1, 0, 18, STAY, RIGHT, 1, OPP_JR_TRAINER_M, 4
	object SPRITE_LASS, 7, 20, STAY, 0, 2, OPP_JR_TRAINER_F, 2
	object SPRITE_BUG_CATCHER, 9, 26, STAY, LEFT, 3, OPP_BUG_CATCHER, 10
	object SPRITE_BLACK_HAIR_BOY_1, 15, 8, STAY, 0, 4, OPP_JR_TRAINER_M, 5
	object SPRITE_LASS, 6, 9, STAY, RIGHT, 5, OPP_JR_TRAINER_F, 3
	object SPRITE_BUG_CATCHER, 3, 31, STAY, 0, 6, OPP_BUG_CATCHER, 11

	; warp-to
	warp_to 9, 1, ROUTE_6_WIDTH ; ROUTE_6_GATE
	warp_to 10, 1, ROUTE_6_WIDTH ; ROUTE_6_GATE
	warp_to 9, 5, ROUTE_6_WIDTH ; ROUTE_6_GATE
	warp_to 2, 9, ROUTE_6_WIDTH ; DIGLETTS_CAVE
	warp_to 2, 25, ROUTE_6_WIDTH ; DIGLETTS_CAVE
