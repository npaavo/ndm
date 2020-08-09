CeruleanBadgeHouse_Object:
	db $3 ; border block

	db 1 ; warps
	warp 9, 3, 0, -1

	db 1 ; signs
	sign 11, 3, 1 ; WarningSign

	db 0 ; objects

	; warp-to
	warp_to 9, 3, CERULEAN_BADGE_HOUSE_WIDTH
