SilverCaveOutside_Object:
	db $2C ; border block

	def_warp_events
	warp_event  18, 11, SILVER_CAVE_1F, 1
	warp_event  23, 19, SILVER_CAVE_POKECENTER, 1

	def_bg_events
	bg_event 24, 19, TEXT_SILVERCAVEOUTSIDE_POKECENTER_SIGN
	bg_event 17, 13, TEXT_SILVERCAVEOUTSIDE_SIGN

	def_object_events

	def_warps_to SILVER_CAVE_OUTSIDE