Route16_h:
	db OVERWORLD ; tileset
	db ROUTE_16_HEIGHT, ROUTE_16_WIDTH ; dimensions (y, x)
	dw Route16_Blocks ; blocks
	dw Route16_TextPointers ; texts
	dw Route16_Script ; scripts
	db WEST | EAST ; connections
	WEST_MAP_CONNECTION ROUTE_16, VIRIDIAN_CITY, -4, 0, ViridianCity_Blocks
	EAST_MAP_CONNECTION ROUTE_16, CELADON_CITY, -3, 1, CeladonCity_Blocks, 1
	dw Route16_Object ; objects
