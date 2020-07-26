Route24_h:
	db OVERWORLD ; tileset
	db ROUTE_24_HEIGHT, ROUTE_24_WIDTH ; dimensions (y, x)
	dw Route24_Blocks ; blocks
	dw Route24_TextPointers ; texts
	dw Route24_Script ; scripts
	db NORTH ; connections
	NORTH_MAP_CONNECTION ROUTE_24, VERMILION_CITY, 28, 0, VermilionCity_Blocks
	dw Route24_Object ; objects
