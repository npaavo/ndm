PewterSpeechHouse_Object:
	db $3 ; border block

	db 5 ; warps
	warp 8, 5, 1, PEWTER_CITY
	warp 9, 5, 1, PEWTER_CITY
	warp 2, 15, 3, PEWTER_CITY
	warp 3, 15, 3, PEWTER_CITY
	warp 5, 11, 0, MUSEUM_1F

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 8, 5, PEWTER_SPEECH_HOUSE_WIDTH ; N
	warp_to 3, 15, PEWTER_SPEECH_HOUSE_WIDTH ; S
	warp_to 5, 11, PEWTER_SPEECH_HOUSE_WIDTH ; Lower
	