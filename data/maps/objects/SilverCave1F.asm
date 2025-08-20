SilverCave1F_Object:
	db $19 ; border block

	def_warp_events
	warp_event  8, 33, SILVER_CAVE_OUTSIDE, 1
	warp_event  9, 33, SILVER_CAVE_OUTSIDE, 1
	warp_event 15,  3, SILVER_CAVE_2F, 1

	def_bg_events

	def_object_events

	def_warps_to SILVER_CAVE_1F