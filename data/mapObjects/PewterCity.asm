PewterCity_Object:
	db $f ; border block

	db 5 ; warps
	warp 16, 9, 0, PEWTER_GYM
	warp 12, 3, 0, PEWTER_SPEECH_HOUSE ; n cave
	warp 23, 9, 0, PEWTER_MART
	warp 13, 17, 0, PEWTER_POKECENTER
	warp 8, 9, 1, PEWTER_SPEECH_HOUSE ; s cave

	db 6 ; signs
	sign 17, 21, 6 ; PewterCityText6 pewter city
	sign 37, 11, 7 ; PewterCityText7 mt moon dirs
	sign 24, 9, 8 ; MartSignText
	sign 14, 17, 9 ; PokeCenterSignText
	sign 11, 5, 10 ; PewterCityText11 gym sign
	sign 23, 17, 11 ; PewterCityText12 construction sign

	db 5 ; objects
	object SPRITE_BUG_CATCHER, 7, 11, STAY, NONE, 1 ; person
	object SPRITE_DAISY, 28, 17, WALK, 0, 2 ; person
	object SPRITE_LASS, 28, 9, WALK, 0, 3 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 30, 19, WALK, 0, 4 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 9, 22, WALK, 0, 5 ; person

	; warp-to
	warp_to 16, 9, PEWTER_CITY_WIDTH ; PEWTER_GYM
	warp_to 12, 3, PEWTER_CITY_WIDTH ; PEWTER_SPEECH_HOUSE ; cave to gym, north exit
	warp_to 23, 9, PEWTER_CITY_WIDTH ; PEWTER_MART
	warp_to 8, 9, PEWTER_CITY_WIDTH ; PEWTER_SPEECH_HOUSE ; cave to gym, south exit
	warp_to 13, 17, PEWTER_CITY_WIDTH ; PEWTER_POKECENTER
