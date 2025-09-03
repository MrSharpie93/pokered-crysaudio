	object_const_def
	const_export SILVERCAVE2F_CALCIUM
	const_export SILVERCAVE2F_ULTRA_BALL
	const_export SILVERCAVE2F_PP_UP

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
	object_event 24, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE2F_CALCIUM, CALCIUM
	object_event 22, 24, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE2F_ULTRA_BALL, ULTRA_BALL
	object_event  4, 20, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE2F_PP_UP, PP_UP

	def_warps_to SILVER_CAVE_2F