RedsHouse1F_Object:
	db $a ; border block

	db 2 ; warps
	warp 4, 7, 0, PALLET_TOWN ; exit1
	warp 5, 7, 0, PALLET_TOWN ; exit2

	db 1 ; signs
	sign 5, 1, 3 ; TV

	db 2 ; objects
	object SPRITE_MOM, 4, 4, STAY, RIGHT, 1 ; Mom
	
	;object SPRITE_BOOK_MAP_DEX, 2, 1, STAY, NONE, 2, TOWN_MAP ; get map
	object SPRITE_BOOK_MAP_DEX, 2, 1, STAY, NONE, 2, SCYTHE ; get map

	; warp-to
	warp_to 4, 7, REDS_HOUSE_1F_WIDTH
	warp_to 5, 7, REDS_HOUSE_1F_WIDTH
