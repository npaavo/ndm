VermilionCity_Object:
	db $43 ; border block

	db 4 ; warps
	warp 17, 3, 0, VERMILION_POKECENTER
	warp 32,  5, 1, DIGLETTS_CAVE
	warp 13, 3, 0, VERMILION_MART
	warp  8, 25, 0, VERMILION_GYM

	db 6 ; signs
	sign 23,  5, 8 ; VermilionCityText8
	sign 37, 15, 9 ; VermilionCityText11
	sign 14, 3, 10 ; MartSignText
	sign 18,  3, 11 ; PokeCenterSignText
	sign  7, 27, 12 ; GymSign
	sign 19, 13, 13 ; Harbor Sign

	db 7 ; objects
	object SPRITE_FOULARD_WOMAN, 21,  7, WALK, 2, 1 ; person
	object SPRITE_GAMBLER, 36, 19, STAY, DOWN, 2 ; person
	object SPRITE_SAILOR, 10,  8, WALK, 1, 3 ; person
	object SPRITE_GAMBLER,  7, 13, STAY, NONE, 4 ; person
	object SPRITE_ERIKA,  6, 13, WALK, 1, 5 ; person
	object SPRITE_SAILOR, 30, 22, WALK, 2, 6 ; person
	object SPRITE_SAILOR, 22, 23, STAY, DOWN, 7 ; person

	; warp-to
	warp_to 17, 3, VERMILION_CITY_WIDTH ; VERMILION_POKECENTER
	warp_to 32,  5, VERMILION_CITY_WIDTH ; DIGLETTS_CAVE
	warp_to 13, 3, VERMILION_CITY_WIDTH ; VERMILION_MART
	warp_to  8, 25, VERMILION_CITY_WIDTH ; VERMILION_GYM
