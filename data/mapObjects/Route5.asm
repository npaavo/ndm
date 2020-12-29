Route5_Object:
	db $f ; border block

	db 3 ; warps
	warp 10, 29, 2, ROUTE_5_GATE
	warp 11, 29, 3, ROUTE_5_GATE
	warp 10, 33, 0, ROUTE_5_GATE

	db 2 ; signs
	sign 9, 29, 4 ; south sign (text4)
	sign 11, 3, 4 ; north sign (text4)

	db 3 ; objects
	object SPRITE_HIKER,  8, 19, STAY, NONE, 1, OPP_FISHER, 1
	object SPRITE_TRAINER,  7, 25, STAY, NONE, 2, OPP_TAMER, 1
	object SPRITE_DAISY, 10, 12, STAY, NONE, 3, OPP_COOLTRAINER_F, 1
	
	; warp-to
	warp_to 10, 29, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 11, 29, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 10, 33, ROUTE_5_WIDTH ; ROUTE_5_GATE
