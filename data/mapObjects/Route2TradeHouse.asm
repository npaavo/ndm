Route2TradeHouse_Object:
	db $03 ; border block

	db 6 ; warps
	warp 9, 11, 2, BLUES_HOUSE
	warp 1, 9, 3, BLUES_HOUSE
	warp 1, 3, 4, BLUES_HOUSE
	warp 21, 1, 5, BLUES_HOUSE
	warp 21, 5, 6, BLUES_HOUSE
	warp 17, 6, 5, VIRIDIAN_CITY

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 9, 11, ROUTE_2_TRADE_HOUSE_WIDTH
	warp_to 1, 9, ROUTE_2_TRADE_HOUSE_WIDTH
	warp_to 1, 3, ROUTE_2_TRADE_HOUSE_WIDTH
	warp_to 21, 1, ROUTE_2_TRADE_HOUSE_WIDTH
	warp_to 21, 5, ROUTE_2_TRADE_HOUSE_WIDTH
