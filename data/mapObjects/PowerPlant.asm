PowerPlant_Object:
	db $2e ; border block

	db 4 ; warps
	warp 18, 35, 5, -1
	warp 19, 35, 5, -1
	warp 20, 35, 5, -1
	warp 21, 35, 5, -1

	db 0 ; signs

	db 14 ; objects
	object SPRITE_BALL, 31,  4, STAY, NONE, 1, VOLTORB, 40
	object SPRITE_BALL, 30,  2, STAY, NONE, 2, VOLTORB, 40
	object SPRITE_BALL, 19,  5, STAY, NONE, 3, VOLTORB, 40
	object SPRITE_BALL, 14,  5, STAY, NONE, 4, ELECTRODE, 43
	object SPRITE_BALL,  2, 12, STAY, NONE, 5, VOLTORB, 40
	object SPRITE_BALL, 22,  3, STAY, NONE, 6, VOLTORB, 40
	object SPRITE_BALL, 23,  4, STAY, NONE, 7, ELECTRODE, 43
	object SPRITE_BALL,  6,  6, STAY, NONE, 8, VOLTORB, 40
	object SPRITE_BIRD,  9,  3, STAY, UP, 9, ZAPDOS, 50
	object SPRITE_BALL,  3,  5, STAY, NONE, 10, CARBOS
	object SPRITE_BALL, 26,  3, STAY, NONE, 11, HP_UP
	object SPRITE_BALL, 18,  2, STAY, NONE, 12, RARE_CANDY
	object SPRITE_BALL, 15,  2, STAY, NONE, 13, TM_25
	object SPRITE_BALL, 27,  5, STAY, NONE, 14, TM_33

	; warp-to
	warp_to 18, 35, POWER_PLANT_WIDTH
