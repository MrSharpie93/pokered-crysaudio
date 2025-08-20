	object_const_def
	const_export ROUTE22GATE_GUARD
	const_export ROUTE22GATE_GUARD_JOHTO
	const_export ROUTE22GATE_GUARD_MT_SILVER

Route22Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event 17,  7, ROUTE_22, 1
	warp_event 18,  7, ROUTE_22, 1
	warp_event  9,  0, ROUTE_23, 1
	warp_event 10,  0, ROUTE_23, 2
	warp_event  9, 17, ROUTE_26, 1
	warp_event 10, 17, ROUTE_26, 1
	warp_event  1,  7, ROUTE_28, 1
	warp_event  2,  7, ROUTE_28, 1

	def_bg_events

	def_object_events
	object_event 11,  6, SPRITE_GUARD, STAY, UP, TEXT_ROUTE22GATE_GUARD
	object_event  8, 12, SPRITE_GUARD, STAY, RIGHT, TEXT_ROUTE22GATE_GUARD_JOHTO
	object_event  8,  6, SPRITE_GUARD, STAY, UP, TEXT_ROUTE22GATE_GUARD_MT_SILVER

	def_warps_to ROUTE_22_GATE
