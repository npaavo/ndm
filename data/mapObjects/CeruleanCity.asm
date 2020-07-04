CeruleanCity_Object:
	db $f ; border block

	db 4 ; warps
	warp 19, 17, 0, CERULEAN_POKECENTER
	warp 30, 7, 0, CERULEAN_GYM
	warp 13, 23, 0, CERULEAN_MART
	warp 4, 11, 0, CERULEAN_CAVE_1F

	db 6 ; signs
	sign 7, 21, 12 ; CeruleanCityText12
	sign 14, 23, 14 ; MartSignText
	sign 20, 17, 15 ; PokeCenterSignText
	sign 35, 17, 16 ; CeruleanCityText16
	sign 23, 33, 17 ; CeruleanCityText17
	sign 15, 11, 18 ; CeruleanCityText18

	db 11 ; objects
	object SPRITE_BLUE, 20, 2, STAY, DOWN, 1 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 25, 9, WALK, 1, 2
	object SPRITE_DAISY, 28, 20, WALK, 0, 3 ; person
	object SPRITE_HIKER, 15, 18, WALK, 0, 4 ; person
	object SPRITE_TRAINER, 18, 11, WALK, 0, 5 ; person
	object SPRITE_HIKER, 32, 8, WALK, 0, 6 ; person
	object SPRITE_LASS, 29, 26, WALK, 0, 7 ; person
	object SPRITE_BLACK_HAIR_BOY_1, 19, 23, WALK, 0, 8 ; person
	object SPRITE_LASS, 29, 12, WALK, 2, 9 ; person
	object SPRITE_HIKER, 17, 8, STAY, UP, 10 ; person
	object SPRITE_BUG_CATCHER, 33, 8, STAY, DOWN, 11 ; person

	; warp-to
	warp_to 19, 17, CERULEAN_CITY_WIDTH ; CERULEAN_POKECENTER
	warp_to 30, 7, CERULEAN_CITY_WIDTH ; CERULEAN_GYM
	warp_to 13, 23, CERULEAN_CITY_WIDTH ; CERULEAN_MART
	warp_to 4, 11, CERULEAN_CITY_WIDTH ; CERULEAN_CAVE_1F
