	object_const_def
	const_export SILVERCAVEITEMROOMS_MAX_REVIVE
	const_export SILVERCAVEITEMROOMS_FULL_RESTORE

SilverCaveItemRooms_Object:
	db $19 ; border block

	def_warp_events
	warp_event 12,  3, SILVER_CAVE_2F, 4
	warp_event 13,  3, SILVER_CAVE_2F, 4
	warp_event  6, 15, SILVER_CAVE_2F, 5
	warp_event  7, 15, SILVER_CAVE_2F, 5

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVEITEMROOMS_MAX_REVIVE, MAX_REVIVE
    object_event 15, 11, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVEITEMROOMS_FULL_RESTORE, FULL_RESTORE

	def_warps_to SILVER_CAVE_ITEM_ROOMS