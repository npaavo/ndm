MtMoonB2F_Object:
	db $19 ; border block

	db 7 ; warps
	warp 21, 5, 1, MT_MOON_B1F
	warp 35, 5, 9, MT_MOON_B1F
	warp 5, 15, 5, MT_MOON_B1F
	warp 21, 17, 3, MT_MOON_B1F
	warp 31, 17, 4, MT_MOON_B1F
	warp 17, 27, 8, MT_MOON_B1F
	warp 5, 33, 10, MT_MOON_B1F

	db 0 ; signs

	db 9 ; objects
	object SPRITE_BLACK_HAIR_BOY_2, 10, 30, STAY, NONE, 1, OPP_SUPER_NERD, 2
	object SPRITE_TRAINER, 24, 30, STAY, DOWN, 2, OPP_PUNK, 4
	object SPRITE_TRAINER, 3, 8, STAY, RIGHT, 3, OPP_PUNK, 5
	object SPRITE_HIKER, 30, 27, STAY, NONE, 4, OPP_HIKER, 2
	object SPRITE_HIKER, 34, 20, STAY, NONE, 5, OPP_HIKER, 3
	object SPRITE_TRAINER, 26, 9, WALK, 0, 6;, OPP_PUNK, 6
	object SPRITE_TRAINER, 19, 3, WALK, 0, 7;, OPP_PUNK, 7
	object SPRITE_BALL, 4, 23, STAY, NONE, 8, SUPER_REPEL
	object SPRITE_BALL, 13, 3, STAY, NONE, 9, REVIVE
	
	;SUPER_NERD 2
	;PUNK 4, 5, 6, 7
	;HIKER 2, 3

	; warp-to	
	warp_to 21, 5, MT_MOON_B2F_WIDTH
	warp_to 35, 5, MT_MOON_B2F_WIDTH
	warp_to 5, 15, MT_MOON_B2F_WIDTH
	warp_to 21, 17,MT_MOON_B2F_WIDTH
	warp_to 31, 17, MT_MOON_B2F_WIDTH
	warp_to 17, 27, MT_MOON_B2F_WIDTH
	warp_to 5, 33, MT_MOON_B2F_WIDTH
