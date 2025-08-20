Route27_Object:
	db $05 ; border block

	def_warp_events
	warp_event 26,  5, TOHJO_FALLS, 1
	warp_event 36,  5, TOHJO_FALLS, 3
	warp_event 33,  7, ROUTE_27_HOUSE, 1

	def_bg_events
	bg_event 25,  7, TEXT_ROUTE27_SIGN

	def_object_events

	def_warps_to ROUTE_27