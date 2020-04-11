CeruleanTradeHouse_Object:
	db $03 ; border block

	db 6 ; warps
	warp 2, 11, 0, ROUTE_3
	warp 3, 11, 0, ROUTE_3
	warp 14, 11, 5, ROUTE_4
	warp 15, 11, 5, ROUTE_4
	warp 20, 11, 6, ROUTE_4
	warp 21, 11, 6, ROUTE_4

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 2, 11, CERULEAN_TRADE_HOUSE_WIDTH
	warp_to 14, 11, CERULEAN_TRADE_HOUSE_WIDTH
	warp_to 20, 11, CERULEAN_TRADE_HOUSE_WIDTH
