CeladonMansion2F_Object:
	db $2e ; border block

	db 4 ; warps
	warp 16, 0, 1, CELADON_MANSION_1F
	warp 9, 4, 1, CELADON_MANSION_3F
	warp 11, 10, 3, CELADON_MANSION_3F
	warp 15, 10, 2, CELADON_MANSION_3F

	db 2 ; signs
	sign 9, 7, 1 ; CeladonMansion2Text1
	sign 19, 9, 1 ; CeladonMansion2Text1

	db 0 ; objects

	; warp-to
	warp_to 16, 0, CELADON_MANSION_2F_WIDTH ; CELADON_MANSION_3F
	warp_to 9, 4, CELADON_MANSION_2F_WIDTH ; CELADON_MANSION_1F
	warp_to 11, 10, CELADON_MANSION_2F_WIDTH ; CELADON_MANSION_1F
	warp_to 15, 10, CELADON_MANSION_2F_WIDTH ; CELADON_MANSION_3F
