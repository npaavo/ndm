ViridianCity_Object:
	db $f ; border block

	db 6 ; warps
	warp 23, 25, 0, VIRIDIAN_POKECENTER
	warp 29, 19, 0, VIRIDIAN_MART
	warp 35, 16, 0, VIRIDIAN_SCHOOL_HOUSE
	warp 30, 29, 0, VIRIDIAN_NICKNAME_HOUSE
	warp 32, 7, 0, VIRIDIAN_GYM
	warp 4, 31, 0, BLUES_HOUSE

	db 7 ; signs
	sign 17, 17, 8 ; ViridianCityText8
	sign 19, 1, 9 ; ViridianCityText9
	sign 21, 29, 10 ; ViridianCityText10
	sign 30, 19, 11 ; MartSignText
	sign 24, 25, 12 ; PokeCenterSignText
	sign 27, 7, 13 ; ViridianCityText13
	sign 35, 17, 16 ; ViridianCityText16

	db 7 ; objects
	object SPRITE_BUG_CATCHER, 13, 20, WALK, 0, 1 ; person
	object SPRITE_GAMBLER, 30, 10, WALK, NONE, 2 ; person
	object SPRITE_BUG_CATCHER, 30, 25, WALK, 0, 3 ; person
	object SPRITE_GIRL, 17, 9, STAY, RIGHT, 4 ; person
	object SPRITE_LYING_OLD_MAN, 18, 9, STAY, NONE, 5 ; person
	object SPRITE_FISHER2, 6, 23, STAY, DOWN, 6 ; person
	object SPRITE_GAMBLER, 17, 5, WALK, 2, 7 ; person

	; warp-to
	warp_to 23, 25, VIRIDIAN_CITY_WIDTH ; VIRIDIAN_POKECENTER
	warp_to 29, 19, VIRIDIAN_CITY_WIDTH ; VIRIDIAN_MART
	warp_to 35, 16, VIRIDIAN_CITY_WIDTH ; VIRIDIAN_SCHOOL_HOUSE ; east house exit
	warp_to 30, 29, VIRIDIAN_CITY_WIDTH ; VIRIDIAN_NICKNAME_HOUSE ; rt1 cave
	warp_to 32, 7, VIRIDIAN_CITY_WIDTH ; VIRIDIAN_GYM
	warp_to 4, 31, VIRIDIAN_CITY_WIDTH ; BLUES_HOUSE / mod dungeon
