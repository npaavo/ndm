PewterCity_Object:
	db $f ; border block

	db 5 ; warps
	warp 16, 9, 0, PEWTER_GYM
	warp 12, 3, 0, PEWTER_SPEECH_HOUSE ; n cave
	warp 23, 9, 0, PEWTER_MART
	warp 13, 17, 0, PEWTER_POKECENTER
	warp 8, 9, 1, PEWTER_SPEECH_HOUSE ; s cave

	db 7 ; signs
	sign 17, 21, 6 ; PewterCityText6
	sign 37, 11, 7 ; PewterCityText7
	sign 24, 9, 8 ; MartSignText
	sign 14, 17, 9 ; PokeCenterSignText
	sign 17, 3, 10 ; PewterCityText10
	sign 11, 5, 11 ; PewterCityText11
	sign 23, 17, 12 ; PewterCityText12

	db 1 ; objects
	object SPRITE_BLUE, 8, 15, STAY, NONE, 1 ; person

	; warp-to
	warp_to 16, 9, PEWTER_CITY_WIDTH ; PEWTER_GYM
	warp_to 12, 3, PEWTER_CITY_WIDTH ; PEWTER_SPEECH_HOUSE ; cave to gym, north exit
	warp_to 23, 9, PEWTER_CITY_WIDTH ; PEWTER_MART
	warp_to 8, 9, PEWTER_CITY_WIDTH ; PEWTER_SPEECH_HOUSE ; cave to gym, south exit
	warp_to 13, 17, PEWTER_CITY_WIDTH ; PEWTER_POKECENTER
