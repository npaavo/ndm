Route5_Object:
	db $f ; border block

	db 3 ; warps
	warp 10, 29, 2, ROUTE_5_GATE
	warp 11, 29, 3, ROUTE_5_GATE
	warp 10, 33, 0, ROUTE_5_GATE

	db 2 ; signs
	sign 9, 29, 1 ; Route5Text1
	sign 11, 3, 1 ; Route5Text1

	db 0 ; objects

	; warp-to
	warp_to 10, 29, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 11, 29, ROUTE_5_WIDTH ; ROUTE_5_GATE
	warp_to 10, 33, ROUTE_5_WIDTH ; ROUTE_5_GATE
