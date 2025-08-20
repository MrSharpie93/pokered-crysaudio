RedsHouse2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  1, REDS_HOUSE_1F, 3
IF DEF(_DEBUG)
	warp_event  2,  7, TOHJO_FALLS, 1
	warp_event  3,  7, ROUTE_28, 1
	warp_event  4,  7, MT_MOON_SQUARE_SHOP, 1
	warp_event  5,  7, POKEMON_TOWER_6F, 1
ENDC

	def_bg_events

	def_object_events

	def_warps_to REDS_HOUSE_2F
