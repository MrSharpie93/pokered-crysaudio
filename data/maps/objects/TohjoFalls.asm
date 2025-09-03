	object_const_def
	const_export TOHJOFALLS_GIOVANNI
	const_export TOHJOFALLS_DUSK_STONE

TohjoFalls_Object:
	db $2E ; border block

	def_warp_events
	warp_event 12, 15, ROUTE_27, 1
	warp_event 13, 15, ROUTE_27, 1
	warp_event 24, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 2

	def_bg_events

	def_object_events
	object_event  5,  5, SPRITE_GIOVANNI, STAY, DOWN, TEXT_TOHJOFALLS_GIOVANNI, OPP_GIOVANNI, 1
	object_event  2,  6, SPRITE_POKE_BALL, STAY, NONE, TEXT_TOHJOFALLS_DUSK_STONE, DUSK_STONE

	def_warps_to TOHJO_FALLS