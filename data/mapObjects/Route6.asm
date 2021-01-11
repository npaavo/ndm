Route6_Object:
	db $f ; border block

	db 5 ; warps
	warp 9, 1, 2, ROUTE_6_GATE
	warp 10, 1, 2, ROUTE_6_GATE
	warp 9, 5, 0, ROUTE_6_GATE
	warp 2, 9, 2, DIGLETTS_CAVE
	warp 2, 25, 3, DIGLETTS_CAVE

	db 2 ; signs
	sign 13, 31, 7 ; Route6Text7
	sign  9,  9, 7 ; Route6Text7

	db 6 ; objects
	object SPRITE_BLACK_HAIR_BOY_1,  1, 18, STAY, NONE, 1, OPP_JR_TRAINER_M, 1
	object SPRITE_FOULARD_WOMAN, 10, 20, STAY, NONE, 2, OPP_CUE_BALL, 2
	object SPRITE_GAMBLER, 10, 26, STAY, LEFT, 3, OPP_GAMBLER, 3
	object SPRITE_BLACK_HAIR_BOY_2, 18, 13, STAY, NONE, 4, OPP_JR_TRAINER_M, 4
	object SPRITE_LASS,  6,  9, STAY, DOWN, 5, OPP_JR_TRAINER_F, 5
	object SPRITE_BUG_CATCHER, 3, 31, STAY, NONE, 6, OPP_BUG_CATCHER, 6

	; warp-to
	warp_to 9, 1, ROUTE_6_WIDTH ; ROUTE_6_GATE
	warp_to 10, 1, ROUTE_6_WIDTH ; ROUTE_6_GATE
	warp_to 9, 5, ROUTE_6_WIDTH ; ROUTE_6_GATE
	warp_to 2, 9, ROUTE_6_WIDTH ; DIGLETTS_CAVE
	warp_to 2, 25, ROUTE_6_WIDTH ; DIGLETTS_CAVE
