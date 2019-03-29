PewterCity_Object:
	db $f ; border block

	db 5 ; warps
	warp 16, 9, 0, PEWTER_GYM
	warp 20, 3, 0, PEWTER_NIDORAN_HOUSE
	warp 23, 9, 0, PEWTER_MART
	warp 7, 21, 0, PEWTER_SPEECH_HOUSE
	warp 13, 17, 0, PEWTER_POKECENTER

	db 7 ; signs
	sign 19, 21, 6 ; PewterCityText6
	sign 33, 11, 7 ; PewterCityText7
	sign 24, 9, 8 ; MartSignText
	sign 14, 17, 9 ; PokeCenterSignText
	sign 15, 1, 10 ; PewterCityText10
	sign 11, 9, 11 ; PewterCityText11
	sign 25, 15, 12 ; PewterCityText12

	db 5 ; objects
	object SPRITE_LASS, 8, 15, STAY, NONE, 1 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 17, 25, STAY, NONE, 2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 27, 17, STAY, NONE, 3 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 26, 25, WALK, 2, 4 ; person
	object SPRITE_BUG_CATCHER, 35, 16, STAY, DOWN, 5 ; person

	; warp-to
	warp_to 16, 9, PEWTER_CITY_WIDTH ; PEWTER_GYM
	warp_to 29, 5, PEWTER_CITY_WIDTH ; PEWTER_NIDORAN_HOUSE
	warp_to 23, 9, PEWTER_CITY_WIDTH ; PEWTER_MART
	warp_to 7, 21, PEWTER_CITY_WIDTH ; PEWTER_SPEECH_HOUSE
	warp_to 13, 17, PEWTER_CITY_WIDTH ; PEWTER_POKECENTER
