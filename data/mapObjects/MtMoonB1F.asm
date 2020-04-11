MtMoonB1F_Object:
	db $3 ; border block

	db 12 ; warps
	warp 1, 3, 3, MT_MOON_1F
	warp 11, 3, 0, MT_MOON_B2F
	warp 21, 3, 6, MT_MOON_1F
	warp 15, 11, 3, MT_MOON_B2F
	warp 23, 11, 4, MT_MOON_B2F
	warp 5, 13, 2, MT_MOON_B2F
	warp 23, 19, 1, MT_MOON_1F
	warp 5, 21, 4, MT_MOON_1F
	warp 13, 21, 5, MT_MOON_B2F
	warp 25, 25, 1, MT_MOON_B2F
	warp 1, 27, 6, MT_MOON_B2F
	warp 17, 27, 5, MT_MOON_1F

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 1, 3, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to 11, 3, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 21, 3, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to 15, 11, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 23, 11, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 5, 13, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 23, 19, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to 5, 21, MT_MOON_B1F_WIDTH ; MT_MOON_1F
	warp_to 13, 21, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 25, 25, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 1, 27, MT_MOON_B1F_WIDTH ; MT_MOON_B2F
	warp_to 17, 27, MT_MOON_B1F_WIDTH ; MT_MOON_1F
