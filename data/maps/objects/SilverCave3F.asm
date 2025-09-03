object_const_def
	const_export SILVERCAVE3F_BLUE

SilverCave3F_Object:
	db $19 ; border block

	def_warp_events
	warp_event  8, 33, SILVER_CAVE_2F, 3
	warp_event  9, 33, SILVER_CAVE_2F, 3

	def_bg_events

	def_object_events
	object_event  9, 10, SPRITE_BLUE, STAY, UP, TEXT_SILVERCAVE3F_BLUE, OPP_RIVAL2, 1

	def_warps_to SILVER_CAVE_3F