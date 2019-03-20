BluesHouse_Object:
	db $03 ; border block

	db 7 ; warps
	warp 18, 11, 5, VIRIDIAN_CITY
	warp 19, 11, 5, VIRIDIAN_CITY
	warp 9, 11, 0, ROUTE_2_TRADE_HOUSE
	warp 0, 8, 1, ROUTE_2_TRADE_HOUSE
	warp 1, 3, 2, ROUTE_2_TRADE_HOUSE
	warp 13, 5, 3, ROUTE_2_TRADE_HOUSE
	warp 21, 5, 4, ROUTE_2_TRADE_HOUSE

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 18, 11, BLUES_HOUSE_WIDTH
	warp_to 19, 11, BLUES_HOUSE_WIDTH
	warp_to 9, 11, BLUES_HOUSE_WIDTH
	warp_to 0, 8, BLUES_HOUSE_WIDTH
	warp_to 1, 3, BLUES_HOUSE_WIDTH
	warp_to 13, 5, BLUES_HOUSE_WIDTH
	warp_to 21, 5, BLUES_HOUSE_WIDTH
