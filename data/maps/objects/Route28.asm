Route28_Object:
	db $2C ; border block

	def_warp_events
	warp_event 33,  5, ROUTE_22_GATE, 7

	def_bg_events
	bg_event 31,  5, TEXT_ROUTE28_SIGN

	def_object_events

	def_warps_to ROUTE_28