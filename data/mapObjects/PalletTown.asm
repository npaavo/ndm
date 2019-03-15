PalletTown_Object:
	db $f ; border block

	db 2 ; warps
	warp 5, 5, 0, REDS_HOUSE_1F
	warp 12, 11, 1, OAKS_LAB

	db 3 ; signs
	sign 7, 7, 6 ; PalletTownText4 - Apartment
	sign 13, 5, 5 ; PalletTownText5 - Town Sign
	sign 13, 13, 4 ; PalletTownText6 - Oak Lab

	db 3 ; objects
	object SPRITE_OAK, 8, 5, STAY, NONE, 1 ; person
	object SPRITE_GIRL, 5, 11, WALK, 0, 2 ; person
	object SPRITE_FISHER2, 15, 8, WALK, 0, 3 ; person

	; warp-to
	warp_to 5, 5, PALLET_TOWN_WIDTH ; REDS_HOUSE_1F
	warp_to 12, 11, PALLET_TOWN_WIDTH ; OAKS_LAB
