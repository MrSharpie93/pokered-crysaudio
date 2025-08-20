Route26_Object:
	db $05 ; border block

	def_warp_events
	warp_event  7,  5, ROUTE_22_GATE, 5
	warp_event 15, 57, ROUTE_26_HEAL_HOUSE, 1

	def_bg_events
	bg_event  8,  6, TEXT_ROUTE26_SIGN

	def_object_events

	def_warps_to ROUTE_26