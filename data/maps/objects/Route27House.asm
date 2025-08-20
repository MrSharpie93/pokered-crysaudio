	object_const_def
	const_export ROUTE27HOUSE_HIKER

Route27House_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_HIKER, STAY, DOWN, TEXT_ROUTE27HOUSE_HIKER

	def_warps_to ROUTE_27_HOUSE
