RedsHouse2F_Object:
	db $02 ; border block

	db 1 ; warps
	warp 7, 3, 0, ROUTE_1

	db 0 ; signs

	db 0 ; objects

	; warp-to
	warp_to 7, 3, REDS_HOUSE_2F_WIDTH
