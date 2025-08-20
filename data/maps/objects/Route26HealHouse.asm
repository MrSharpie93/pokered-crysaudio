	object_const_def
	const_export ROUTE26HEALHOUSE_BEAUTY

Route26HealHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 2
	warp_event  3,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_BEAUTY, STAY, DOWN, TEXT_ROUTE26HEALHOUSE_BEAUTY

	def_warps_to ROUTE_26_HEAL_HOUSE
