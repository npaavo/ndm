Route6Gate_Object:
	db $a ; border block

	db 4 ; warps
	warp 2, 5, 2, -1
	warp 3, 5, 2, -1
	warp 2, 0, 1, -1
	warp 3, 0, 1, -1

	db 0 ; signs

	db 1 ; objects
	object SPRITE_GUARD, 6, 3, STAY, LEFT, 1 ; person

	; warp-to
	warp_to 2, 5, ROUTE_6_GATE_WIDTH
	warp_to 3, 5, ROUTE_6_GATE_WIDTH
	warp_to 2, 0, ROUTE_6_GATE_WIDTH
	warp_to 3, 0, ROUTE_6_GATE_WIDTH
