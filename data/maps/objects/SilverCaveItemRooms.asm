SilverCaveItemRooms_Object:
	db $19 ; border block

	def_warp_events
	warp_event 12,  3, SILVER_CAVE_2F, 4
	warp_event 13,  3, SILVER_CAVE_2F, 4
	warp_event  6, 15, SILVER_CAVE_2F, 5
	warp_event  7, 15, SILVER_CAVE_2F, 5

	def_bg_events

	def_object_events

	def_warps_to SILVER_CAVE_ITEM_ROOMS