Route16_Object:
	db $43 ; border block

	db 3 ; warps
	warp 27, 10, 1, ROUTE_16_GATE_1F
	warp 32, 10, 2, ROUTE_16_GATE_1F
	warp 0, 8, 1, VIRIDIAN_SCHOOL_HOUSE

	db 3 ; signs
	sign 1, 9, 1 ; Route16Text1
	sign 23, 9, 2 ; Route16Text2
	sign 35, 11, 3 ; Route16Text3

	db 0 ; objects

	; warp-to
	warp_to 27, 10, ROUTE_16_WIDTH ; ROUTE_16_GATE_1F
	warp_to 32, 10, ROUTE_16_WIDTH ; ROUTE_16_GATE_1F
	warp_to 0, 8, ROUTE_16_WIDTH ; ROUTE_16_GATE_1F
