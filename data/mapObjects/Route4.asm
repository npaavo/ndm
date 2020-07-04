Route4_Object:
	db $2c ; border block

	db 7 ; warps
	warp 11, 5, 0, MT_MOON_POKECENTER
	warp 20, 3, 8, MT_MOON_1F
	warp 28, 3, 0, MT_MOON_1F
	warp 34, 13, 7, MT_MOON_1F
	warp 48, 1, 2, MT_MOON_1F
	warp 68, 9, 1, CERULEAN_TRADE_HOUSE
	warp 74, 9, 2, CERULEAN_TRADE_HOUSE

	db 3 ; signs
	sign 12, 5, 4 ; PokeCenterSignText
	sign 15, 11, 5 ; Route4Text5
	sign 49, 3, 5 ; Route4Text6

	db 4 ; objects
	object SPRITE_LASS, 9, 8, WALK, 0, 1 ; person
	object SPRITE_LASS, 58, 8, STAY, RIGHT, 2, OPP_LASS, 4
	object SPRITE_BALL, 42, 15, STAY, NONE, 3, MAX_REVIVE
	object SPRITE_HIKER, 82, 10, STAY, UP, 6 ; person

	; warp-to
	warp_to 11, 5, ROUTE_4_WIDTH ; MT_MOON_POKECENTER
	warp_to 20, 3, ROUTE_4_WIDTH ; MT_MOON_1F
	warp_to 28, 3, ROUTE_4_WIDTH ; MT_MOON_1F
	warp_to 34, 13, ROUTE_4_WIDTH ; MT_MOON_1F
	warp_to 48, 1, ROUTE_4_WIDTH ; MT_MOON_1F
	warp_to 68, 9, ROUTE_4_WIDTH ; WCERULEANCAVE L
	warp_to 74, 9, ROUTE_4_WIDTH ; WCERULEANCAVE R
