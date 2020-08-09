Route10_Object:
	db $2c ; border block

	db 5 ; warps
	warp 3, 11, 0, ROCK_TUNNEL_POKECENTER
	warp 10, 7, 0, ROCK_TUNNEL_1F
	warp 8, 17, 1, ROCK_TUNNEL_1F
	warp 8, 51, 2, ROCK_TUNNEL_1F
	;warp 14, 57, 4, ROCK_TUNNEL_1F  ; todo
	warp 10, 35, 0, POWER_PLANT

	db 8 ; signs
	sign 12, 19, 8 ; PokeCenterSignText
	sign 9, 9, 7  ; Route10Text9
	sign 9, 55, 7 ; Route10Text9
	sign 7, 21, 10 ; Route10PowerPlantWarning1
	sign 5, 27, 11 ; Route10PowerPlantWarning2
	sign 5, 31, 11 ; Route10PowerPlantWarning2
	sign 5, 35, 11 ; Route10PowerPlantWarning2
	sign 7, 39, 11 ; Route10PowerPlantWarning2

	db 6 ; objects
	object SPRITE_BLACK_HAIR_BOY_2, 10, 44, STAY, LEFT, 1, OPP_POKEMANIAC, 1
	object SPRITE_HIKER, 2, 56, STAY, NONE, 2, OPP_HIKER, 1
	object SPRITE_BLACK_HAIR_BOY_2, 17, 63, STAY, LEFT, 3, OPP_POKEMANIAC, 1
	object SPRITE_LASS, 7, 23, STAY, DOWN, 4, OPP_JR_TRAINER_F, 1
	object SPRITE_HIKER, 16, 53, STAY, NONE, 5, OPP_HIKER, 1
	object SPRITE_LASS, 17, 66, STAY, LEFT, 6, OPP_JR_TRAINER_F, 1

	; warp-to
	warp_to 3, 11, ROUTE_10_WIDTH ; ROCK_TUNNEL_POKECENTER
	warp_to 10, 7, ROUTE_10_WIDTH ; ROCK_TUNNEL_1F - north entrance
	warp_to 8, 17, ROUTE_10_WIDTH ; ROCK_TUNNEL_1F - power plant exit
	warp_to 8, 51, ROUTE_10_WIDTH ; ROCK_TUNNEL_1F - main exit
	warp_to 14, 57, ROUTE_10_WIDTH ; ROCK_TUNNEL_1F - side cave
	warp_to 10, 35, ROUTE_10_WIDTH ; POWER_PLANT
