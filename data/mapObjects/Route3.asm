Route3_Object:
	db $2c ; border block

	db 0 ; warps

	db 2 ; signs
	sign 59, 9, 10 ; Route3Text10
	sign 31, 13, 10 ; Route3Text10

	db 9 ; objects
	object SPRITE_BLACK_HAIR_BOY_2, 57, 11, WALK, NONE, 1 ; person
	object SPRITE_BUG_CATCHER, 13, 7, STAY, NONE, 2, OPP_BUG_CATCHER, 4
	object SPRITE_BUG_CATCHER, 13, 13, STAY, UP, 3, OPP_YOUNGSTER, 1
	object SPRITE_LASS, 21, 13, STAY, NONE, 4, OPP_LASS, 1
	object SPRITE_BUG_CATCHER, 19, 6, STAY, UP, 5, OPP_BUG_CATCHER, 5
	object SPRITE_LASS, 27, 6, STAY, LEFT, 6, OPP_LASS, 2
	object SPRITE_BUG_CATCHER, 34, 6, STAY, RIGHT, 7, OPP_YOUNGSTER, 2
	object SPRITE_BUG_CATCHER, 29, 11, STAY, NONE, 8, OPP_BUG_CATCHER, 6
	object SPRITE_LASS, 44, 4, STAY, NONE, 9, OPP_LASS, 3
