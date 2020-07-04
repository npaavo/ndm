VermilionCity_Object:
	db $43 ; border block

	db 4 ; warps
	warp 17, 3, 0, VERMILION_POKECENTER
	warp 34, 5, 1, DIGLETTS_CAVE
	warp 13, 3, 0, VERMILION_MART
	warp 6, 27, 0, VERMILION_GYM

	db 4 ; signs
	sign 23, 5, 7 ; VermilionCityText7
	sign 39, 15, 8 ; VermilionCityText8
	sign 14, 3, 9 ; MartSignText
	sign 18, 3, 10 ; PokeCenterSignText

	db 6 ; objects
	object SPRITE_FOULARD_WOMAN, 26, 8, WALK, 2, 1 ; person
	object SPRITE_GAMBLER, 5, 9, STAY, DOWN, 2 ; person
	object SPRITE_SAILOR, 6, 12, STAY, DOWN, 3 ; person
	object SPRITE_GAMBLER, 20, 22, STAY, NONE, 4 ; person
	object SPRITE_SLOWBRO, 20, 23, WALK, 1, 5 ; person
	object SPRITE_SAILOR, 30, 22, WALK, 2, 6 ; person

	; warp-to
	warp_to 17, 3, VERMILION_CITY_WIDTH ; VERMILION_POKECENTER
	warp_to 34, 5, VERMILION_CITY_WIDTH ; DIGLETTS_CAVE
	warp_to 13, 3, VERMILION_CITY_WIDTH ; VERMILION_MART
	warp_to 6, 27, VERMILION_CITY_WIDTH ; VERMILION_GYM
