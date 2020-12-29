PokemonTower1F_Object:
	db $3 ; border block

	db 4 ; warps
	warp  9, 21, 1, -1
	warp 10, 21, 1, -1
	warp 23,  0, 1, POKEMON_TOWER_2F
	warp 24,  0, 1, POKEMON_TOWER_2F

	db 0 ; signs

	db 5 ; objects
	object SPRITE_CABLE_CLUB_WOMAN, 23, 12, STAY, NONE, 1 ; person
	object SPRITE_MOM_GEISHA,  8, 13, STAY, NONE, 2 ; person
	object SPRITE_BALDING_GUY, 15,  8, STAY, LEFT, 3 ; person
	object SPRITE_GIRL,  3,  2, STAY, UP, 4 ; person
	object SPRITE_MEDIUM, 20, 18, STAY, DOWN, 5 ; person

	; warp-to
	warp_to  9, 21, POKEMON_TOWER_1F_WIDTH
	warp_to 10, 21, POKEMON_TOWER_1F_WIDTH
	warp_to 23,  0, POKEMON_TOWER_1F_WIDTH ; POKEMON_TOWER_2F
	warp_to 24,  0, POKEMON_TOWER_1F_WIDTH ; POKEMON_TOWER_2F
