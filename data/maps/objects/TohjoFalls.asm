TohjoFalls_Object:
	db $2E ; border block

	def_warp_events
	warp_event 12, 15, ROUTE_27, 1
	warp_event 13, 15, ROUTE_27, 1
	warp_event 24, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 2

	def_bg_events

	def_object_events

	def_warps_to TOHJO_FALLS