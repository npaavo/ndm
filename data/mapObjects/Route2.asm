Route2_Object:
	db $f ; border block

	db 9 ; warps
	warp 12, 9, 0, DIGLETTS_CAVE
	warp  3, 10, 0, VIRIDIAN_FOREST ; n exit
	warp 16, 35, 0, ROUTE_2_GATE ; I believe these are needed
	warp 15, 39, 1, ROUTE_2_GATE ; for sprite loading
	warp  2, 41, 1, VIRIDIAN_FOREST ; s exit
	warp  3, 41, 1, VIRIDIAN_FOREST ; s exit
	warp 6, 25, 2, VIRIDIAN_FOREST ; lake
	warp 7, 25, 2, VIRIDIAN_FOREST ; lake
	warp  2, 10, 0, VIRIDIAN_FOREST ; n exit

	db 2 ; signs
	sign 9, 65, 8 ; Route2Text3 , trail sign
	sign 11, 11, 9 ; Route2Text4, cave sign

	db 7 ; objects
	object SPRITE_GIRL, 18, 45, STAY, NONE, 1, OPP_LASS, 1
	object SPRITE_BLACK_HAIR_BOY_2,  3,  6, STAY, NONE, 2, OPP_YOUNGSTER, 1
	object SPRITE_BLACK_HAIR_BOY_2, 16, 18, STAY, NONE, 3, OPP_BIRD_KEEPER, 1
	object SPRITE_BUG_CATCHER, 17, 67, STAY, RIGHT, 4, OPP_BUG_CATCHER, 1
	object SPRITE_BALL, 11, 56, STAY, NONE, 5, LEAF_STONE
	object SPRITE_BALL, 19, 68, STAY, NONE, 6, MOON_STONE
	object SPRITE_BLACK_HAIR_BOY_2,  5, 27, STAY, DOWN, 7


	; warp-to
	warp_to 12, 9, ROUTE_2_WIDTH ; DIGLETTS_CAVE_ROUTE_2
	warp_to  2, 10, ROUTE_2_WIDTH ; VIRIDIAN_FOREST_NORTH_GATE
	warp_to 16, 35, ROUTE_2_WIDTH ; ROUTE_2_GATE (n)
	warp_to 15, 39, ROUTE_2_WIDTH ; ROUTE_2_GATE (s)
	warp_to  3, 41, ROUTE_2_WIDTH ; VIRIDIAN_FOREST_SOUTH_GATE
	warp_to  6, 25, ROUTE_2_WIDTH ; lake

