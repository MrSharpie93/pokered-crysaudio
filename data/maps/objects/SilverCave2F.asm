SilverCave2F_Object:
	db $19 ; border block

	def_warp_events
	warp_event 16, 31, SILVER_CAVE_1F, 3
	warp_event 17, 31, SILVER_CAVE_1F, 3
	warp_event 11,  5, SILVER_CAVE_3F, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	def_bg_events

	def_object_events

	def_warps_to SILVER_CAVE_2F