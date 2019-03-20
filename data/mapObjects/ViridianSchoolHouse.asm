ViridianSchoolHouse_Object:
	db $a ; border block

	db 4 ; warps
	warp 0, 2, 2, VIRIDIAN_CITY
	warp 0, 3, 2, VIRIDIAN_CITY
	warp 7, 2, 2, ROUTE_16
	warp 7, 3, 2, ROUTE_16

	db 0 ; signs

	db 1 ; objects
	object SPRITE_ROCKER, 2, 2, WALK, 0, 1 ; person

	; warp-to
	warp_to 0, 3, VIRIDIAN_SCHOOL_HOUSE_WIDTH
	warp_to 7, 3, VIRIDIAN_SCHOOL_HOUSE_WIDTH
