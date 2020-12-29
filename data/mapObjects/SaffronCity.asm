SaffronCity_Object:
	db $f ; border block

	db 6 ; warps	
	warp 13, 11, 0, SAFFRON_POKECENTER
	warp 14, 11, 1, SAFFRON_POKECENTER
	warp 13, 5, 0, SAFFRON_MART
	warp 14, 5, 0, SAFFRON_MART
	warp 28, 21, 0, SAFFRON_GYM
	warp 30, 11, 0, FIGHTING_DOJO

	db 9 ; signs
	sign 21, 5, 17 ; SaffronCityText17 ;TR 1
	sign 35, 5, 18 ; SaffronCityText18 ;TR 2
	sign 16, 5, 19 ; MartSignText
	sign 39, 19, 20 ; SaffronCityText20 ; East exit
	sign  5, 21, 21 ; SaffronCityText21
	sign 35, 21, 22 ; SaffronCityText22 ; next to gym
	sign 16, 11, 23 ; PokeCenterSignText
	sign 13, 29, 24 ; SaffronCityText24 ; SW
	sign 1, 19, 25 ; SaffronCityText25 ; west exit

	db 15 ; objects
	object SPRITE_SLOWBRO, 8, 6, WALK, 1, 1 ; jynx
	object SPRITE_SLOWBRO, 17, 15, WALK, 0, 2 ; machoke
	object SPRITE_SLOWBRO, 14, 25, STAY, UP, 3 ; mr mime
	object SPRITE_SLOWBRO, 30, 25, STAY, NONE, 4 ; hitmonchan
	object SPRITE_SLOWBRO, 37, 9, WALK, 2, 5 ; hitmonlee
	object SPRITE_BIRD, 25, 16, STAY, DOWN, 6 ; bird on roof
	object SPRITE_BIRD, 22, 8, WALK, 0, 7 ; fearow
	object SPRITE_FOULARD_WOMAN, 37, 30, WALK, 0, 8 ; person
	object SPRITE_GENTLEMAN, 30,  5, STAY, NONE, 9 ; person
	object SPRITE_BRUNETTE_GIRL, 15, 25, WALK, 1, 10 ; person
	object SPRITE_MEDIUM, 28, 12, WALK, 1, 11 ; person
	object SPRITE_BLACK_HAIR_BOY_2, 19, 12, WALK, 0, 12 ; person
	object SPRITE_MEDIUM, 25, 30, WALK, 2, 13 ; person
	object SPRITE_BRUNETTE_GIRL, 6, 28, WALK, 2, 14 ; person
	object SPRITE_FOULARD_WOMAN,  7, 20, STAY, DOWN, 15 ; person

	; warp-to	
	warp_to 13, 11, SAFFRON_CITY_WIDTH ;SAFFRON_POKECENTER
	warp_to 14, 11, SAFFRON_CITY_WIDTH ;SAFFRON_POKECENTER
	warp_to 13, 5, SAFFRON_CITY_WIDTH ;SAFFRON_MART
	warp_to 14, 5, SAFFRON_CITY_WIDTH ;SAFFRON_MART
	warp_to 28, 21, SAFFRON_CITY_WIDTH ;SAFFRON_GYM
	warp_to 30, 11, SAFFRON_CITY_WIDTH ;FIGHTING_DOJO
