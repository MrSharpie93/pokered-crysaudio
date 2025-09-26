	object_const_def
	const_export ROUTE28STEELWINGHOUSE_CELEBRITY
	const_export ROUTE28STEELWINGHOUSE_FEAROW

Route28SteelWingHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 2
	warp_event  3,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_BEAUTY, STAY, DOWN, TEXT_ROUTE28STEELWINGHOUSE_CELEBRITY
	object_event  6,  3, SPRITE_BIRD, WALK, ANY_DIR, TEXT_ROUTE28STEELWINGHOUSE_FEAROW

	def_warps_to ROUTE_28_STEEL_WING_HOUSE
