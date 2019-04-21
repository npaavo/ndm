Museum1F_Object:
	db $3 ; border block

	db 2 ; warps
	warp 13, 3, 2, PEWTER_SPEECH_HOUSE
	warp 2, 8, 0, MUSEUM_2F

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 13, 3, MUSEUM_1F_WIDTH
	warp_to 2, 8, MUSEUM_1F_WIDTH
