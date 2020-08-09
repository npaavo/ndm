RockTunnel1F_Object:
	db $3 ; border block

	db 7 ; warps
	warp 17, 1, 1, -1 ; main entrance
	warp 27, 13, 2, -1 ; power plant exit
	warp 3, 29, 3, -1 ; main exit
	warp 26, 18, 2, ROCK_TUNNEL_B1F ;3
	warp 1, 25, 1, ROCK_TUNNEL_B1F ;4
	warp 10, 28, 0, ROCK_TUNNEL_B1F ;5
	warp 16, 32, 3, ROCK_TUNNEL_B1F ;6

	db 1 ; signs
	sign 11, 29, 8 ; RockTunnel1Text8

	db 7 ; objects
	object SPRITE_HIKER, 18, 4, STAY, LEFT, 1, OPP_HIKER, 12
	object SPRITE_BLACK_HAIR_BOY_1, 28, 4, STAY, NONE, 2, OPP_JR_TRAINER_M, 13
	object SPRITE_HIKER, 36, 4, STAY, NONE, 3, OPP_HIKER, 14
	object SPRITE_BLACK_HAIR_BOY_2, 8, 12, STAY, NONE, 4, OPP_POKEMANIAC, 7
	object SPRITE_LASS, 13, 19, STAY, NONE, 5, OPP_JR_TRAINER_F, 17
	object SPRITE_LASS, 34, 24, STAY, NONE, 6, OPP_BEAUTY, 18
	object SPRITE_LASS, 21, 30, STAY, NONE, 7, OPP_CUE_BALL, 19

	; warp-to
	warp_to 17, 1, ROCK_TUNNEL_1F_WIDTH
	warp_to 27, 13, ROCK_TUNNEL_1F_WIDTH
	warp_to 3, 29, ROCK_TUNNEL_1F_WIDTH
	warp_to 26, 18, ROCK_TUNNEL_1F_WIDTH
	warp_to 1, 25, ROCK_TUNNEL_1F_WIDTH ; ROCK_TUNNEL_B1F
	warp_to 10, 28, ROCK_TUNNEL_1F_WIDTH ; ROCK_TUNNEL_B1F
	warp_to 16, 32, ROCK_TUNNEL_1F_WIDTH ; ROCK_TUNNEL_B1F
