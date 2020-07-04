DiglettsCave_Object:
	db $19 ; border block

	db 4 ; warps
	warp 19, 11, 0, ROUTE_2
	warp 37, 31, 1, VERMILION_CITY
	warp 13, 5, 3, ROUTE_6
	warp 13, 21, 4, ROUTE_6

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 19, 11, DIGLETTS_CAVE_WIDTH ; ROUTE_2
	warp_to 37, 31, DIGLETTS_CAVE_WIDTH ; VERMILION_CITY
	warp_to 13, 5, DIGLETTS_CAVE_WIDTH ; ROUTE_6
	warp_to 13, 21, DIGLETTS_CAVE_WIDTH ; ROUTE_6
