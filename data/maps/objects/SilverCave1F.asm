	object_const_def
	const_export SILVERCAVE1F_MAX_ELIXER
	const_export SILVERCAVE1F_PROTEIN
	const_export SILVERCAVE1F_X_DEFEND
	const_export SILVERCAVE1F_ULTRA_BALL

SilverCave1F_Object:
	db $19 ; border block

	def_warp_events
	warp_event  8, 33, SILVER_CAVE_OUTSIDE, 1
	warp_event  9, 33, SILVER_CAVE_OUTSIDE, 1
	warp_event 15,  3, SILVER_CAVE_2F, 1

	def_bg_events

	def_object_events
	object_event  4,  9, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE1F_MAX_ELIXER, MAX_ELIXER
	object_event 15, 29, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE1F_PROTEIN, PROTEIN
	object_event  5, 30, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE1F_X_DEFEND, X_DEFEND
	object_event  7, 18, SPRITE_POKE_BALL, STAY, NONE, TEXT_SILVERCAVE1F_ULTRA_BALL, ULTRA_BALL

	def_warps_to SILVER_CAVE_1F