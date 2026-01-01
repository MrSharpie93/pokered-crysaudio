	object_const_def
	const_export VIRIDIANSCHOOLHOUSE_MC
	const_export VIRIDIANSCHOOLHOUSE_MONIKA
	const_export VIRIDIANSCHOOLHOUSE_SAYORI
	const_export VIRIDIANSCHOOLHOUSE_YURI
	const_export VIRIDIANSCHOOLHOUSE_NATSUKI

ViridianSchoolHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 3
	warp_event  3,  7, LAST_MAP, 3

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_COOLTRAINER_M, STAY, UP, TEXT_VIRIDIANSCHOOLHOUSE_MC
	object_event  4,  1, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_VIRIDIANSCHOOLHOUSE_MONIKA ; CooltrainerF 9 
	object_event  0,  1, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_VIRIDIANSCHOOLHOUSE_SAYORI ; Lass 20
	object_event  7,  4, SPRITE_GIRL, STAY, LEFT, TEXT_VIRIDIANSCHOOLHOUSE_YURI ; Lass 21
	object_event  0,  4, SPRITE_SILPH_WORKER_F, STAY, RIGHT, TEXT_VIRIDIANSCHOOLHOUSE_NATSUKI ; Lass 22

	def_warps_to VIRIDIAN_SCHOOL_HOUSE
