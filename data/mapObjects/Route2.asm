Route2_Object:
	db $f ; border block

	db 8 ; warps
	warp 12, 9, 0, DIGLETTS_CAVE
	warp 3, 11, 0, VIRIDIAN_FOREST ; n exit
	warp 16, 35, 0, ROUTE_2_GATE ; I believe these are needed
	warp 15, 39, 1, ROUTE_2_GATE ; for sprite loading
	warp  2, 41, 1, VIRIDIAN_FOREST ; s exit
	warp  3, 41, 1, VIRIDIAN_FOREST ; s exit
	warp 6, 25, 2, VIRIDIAN_FOREST ; lake
	warp 7, 25, 2, VIRIDIAN_FOREST ; lake

	db 2 ; signs
	sign 9, 65, 4 ; Route2Text3 , trail sign
	sign 11, 11, 5 ; Route2Text4, cave sign

	db 3 ; objects
	object SPRITE_BALL, 11, 56, STAY, NONE, 1, MOON_STONE
	object SPRITE_BALL, 14, 45, STAY, NONE, 2, MOON_STONE
	object SPRITE_BLACK_HAIR_BOY_2, 5, 27, STAY, DOWN, 3

	; warp-to
	warp_to 12, 9, ROUTE_2_WIDTH ; DIGLETTS_CAVE_ROUTE_2
	warp_to 3, 11, ROUTE_2_WIDTH ; VIRIDIAN_FOREST_NORTH_GATE
	warp_to 16, 35, ROUTE_2_WIDTH ; ROUTE_2_GATE (n)
	warp_to 15, 39, ROUTE_2_WIDTH ; ROUTE_2_GATE (s)
	warp_to  3, 41, ROUTE_2_WIDTH ; VIRIDIAN_FOREST_SOUTH_GATE
	warp_to  6, 25, ROUTE_2_WIDTH ; lake

