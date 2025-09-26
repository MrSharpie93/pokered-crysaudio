	object_const_def

BillsGarden_Object:
	db $0A ; border block

	def_warp_events
	warp_event 13, 18, BILLS_HOUSE, 3
	warp_event 14, 18, BILLS_HOUSE, 3

	def_bg_events

	def_object_events

	def_warps_to BILLS_GARDEN
