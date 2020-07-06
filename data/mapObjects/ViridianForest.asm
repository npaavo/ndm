ViridianForest_Object:
	db $3 ; border block

	db 6 ; warps
	warp 2, 0, 1, ROUTE_2 ; n exit
	warp 3, 0, 1, ROUTE_2
	warp 16, 47, 4, ROUTE_2 ; s exit
	warp 17, 47, 4, ROUTE_2
	warp 0, 24, 5, ROUTE_2 ; lake
	warp 0, 25, 5, ROUTE_2

	db 4 ; signs
	sign 17, 39, 10 ; ViridianForestText9 - s entrance sign
	sign 26, 31, 11 ; ViridianForestText10 - clearcutting sign
	sign 28, 3, 12 ; ViridianForestText11 ; foreman sign
	sign 4, 4, 13 ; ViridianForestText14 - n exit sign

	db 9 ; objects
	object SPRITE_BUG_CATCHER, 16, 43, STAY, NONE, 1 ; person, talker at start
	object SPRITE_HIKER, 26, 19, STAY, NONE, 2, OPP_LOGGER, 1 ; trainer1, work middle
	object SPRITE_HIKER, 26, 28, STAY, NONE, 3, OPP_LOGGER, 1 ; trainer2, work entrance
	object SPRITE_HIKER, 25, 5, STAY, NONE, 4, OPP_LOGGER, 1 ; trainer3, topright
	object SPRITE_HIKER, 17, 10, STAY, NONE, 5, OPP_LOGGER, 1 ; trainer4, clearing
	object SPRITE_BALL, 11, 9, STAY, NONE, 6, GREAT_BALL ; THIS MUST REMAIN SPRITE 5
	object SPRITE_BALL, 10, 35, STAY, NONE, 7, SUPER_POTION ; THIS MUST REMAIN SPRITE 6
	object SPRITE_BALL, 5, 44, STAY, NONE, 8, FULL_HEAL ; THIS MUST REMAIN SPRITE 7
	object SPRITE_HIKER, 27, 2, STAY, LEFT, 9 ; bouncer
	
	;27, 2

	; warp-to
	warp_to 2, 0, VIRIDIAN_FOREST_WIDTH ; VIRIDIAN_FOREST_NORTH_GATE
	warp_to 16, 47, VIRIDIAN_FOREST_WIDTH ; VIRIDIAN_FOREST_SOUTH_GATE
	warp_to 0, 24, VIRIDIAN_FOREST_WIDTH ; lake 
