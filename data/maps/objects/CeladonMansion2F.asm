	object_const_def
	const_export CELADONMANSION2F_MOVE_RELEARNER
	const_export CELADONMANSION2F_MOVE_DELETER

CeladonMansion2F_Object:
	db $f ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 1
	warp_event  7,  1, CELADON_MANSION_1F, 4
	warp_event  2,  1, CELADON_MANSION_1F, 5
	warp_event  4,  1, CELADON_MANSION_3F, 4

	def_bg_events
	bg_event  4,  9, TEXT_CELADONMANSION2F_MEETING_ROOM_SIGN

	def_object_events
	object_event  0, 4, SPRITE_SUPER_NERD, STAY, RIGHT, TEXT_MOVE_RELEARNER
	object_event  4, 4, SPRITE_SILPH_WORKER_M, STAY, LEFT, TEXT_MOVE_DELETER

	def_warps_to CELADON_MANSION_2F
