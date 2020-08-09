CeladonCity_Object:
	db $f ; border block

	db 7 ; warps
	warp 7, 13, 0, CELADON_MART_1F
	warp 8, 13, 1, CELADON_MART_1F
	warp 24, 9, 0, CELADON_MANSION_1F
	warp 26, 31, 0, CELADON_POKECENTER
	warp 9, 29, 0, CELADON_GYM
	warp 40, 29, 0, GAME_CORNER
	warp 12, 3, 0, CELADON_HOTEL

	db 9 ; signs
	sign 27, 15, 10 ; CeladonCityText10
	sign 19, 15, 11 ; CeladonCityText11
	sign 42, 9, 12 ; PokeCenterSignText
	sign 13, 29, 13 ; CeladonCityText13
	sign 21, 9, 14 ; CeladonCityText14
	sign 12, 13, 15 ; CeladonCityText15
	sign 39, 21, 16 ; CeladonCityText16
	sign 33, 21, 17 ; CeladonCityText17
	sign 27, 21, 18 ; CeladonCityText18

	db 9 ; objects
	object SPRITE_MEDIUM, 35, 3, WALK, 0, 1 ; person
	object SPRITE_FAT_BALD_GUY, 32, 22, WALK, 0, 2 ; person
	object SPRITE_GIRL, 21, 17, WALK, 0, 3 ; person
	object SPRITE_LANCE, 16, 30, WALK, 0, 4 ; person
	object SPRITE_GENTLEMAN, 21, 6, WALK, 0, 5 ; person
	object SPRITE_FISHER2, 44, 31, WALK, 0, 6 ; person
	object SPRITE_DAISY, 28, 33, WALK, 0, 7 ; person
	object SPRITE_GIRL, 42, 16, WALK, 0, 8 ; person
	object SPRITE_GENTLEMAN, 37, 17, WALK, 0, 9 ; person
	

	; warp-to
	warp_to 7, 13, CELADON_CITY_WIDTH ; CELADON_MART_1F
	warp_to 8, 13, CELADON_CITY_WIDTH ; CELADON_MART_1F
	warp_to 24, 9, CELADON_CITY_WIDTH ; CELADON_MANSION_1F
	warp_to 26, 31, CELADON_CITY_WIDTH ; CELADON_POKECENTER
	warp_to 9, 29, CELADON_CITY_WIDTH ; CELADON_GYM
	warp_to 40, 29, CELADON_CITY_WIDTH ; GAME_CORNER
	warp_to 12, 3, CELADON_CITY_WIDTH ; CELADON_HOTEL
