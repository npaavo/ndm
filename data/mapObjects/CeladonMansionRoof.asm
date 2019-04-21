CeladonMansionRoof_Object:
	db $2e ; border block

	db 2 ; warps
	warp 2, 0, 0, CELADON_MANSION_3F
	warp 19, 2, 4, CELADON_MANSION_3F

	db 3 ; signs
	sign 1, 3, 1 ; CeladonMansion4Text1
	sign 9, 11, 1 ; CeladonMansion4Text1
	sign 21, 13, 1 ; CeladonMansion4Text1

	db 0 ; objects

	; warp-to
	warp_to 2, 0, CELADON_MANSION_ROOF_WIDTH ; CELADON_MANSION_3F
	warp_to 19, 2, CELADON_MANSION_ROOF_WIDTH ; CELADON_MANSION_3F
