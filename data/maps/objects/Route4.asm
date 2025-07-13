	object_const_def
	const_export ROUTE4_COOLTRAINER_F1
	const_export ROUTE4_COOLTRAINER_F2
	const_export ROUTE4_TM_WHIRLWIND
	const_export ROUTE4_HIKER2
	const_export ROUTE4_HIKER3

Route4_Object:
	db $2c ; border block

	def_warp_events
	warp_event 11,  5, MT_MOON_POKECENTER, 1
	warp_event 18,  5, MT_MOON_1F, 1
	warp_event 24,  5, MT_MOON_B1F, 8

	def_bg_events
	bg_event 12,  5, TEXT_ROUTE4_POKECENTER_SIGN
	bg_event 17,  7, TEXT_ROUTE4_MT_MOON_SIGN
	bg_event 27,  7, TEXT_ROUTE4_SIGN

	def_object_events
	object_event  9,  8, SPRITE_COOLTRAINER_F, WALK, ANY_DIR, TEXT_ROUTE4_COOLTRAINER_F1
	object_event 63,  3, SPRITE_COOLTRAINER_F, STAY, RIGHT, TEXT_ROUTE4_COOLTRAINER_F2, OPP_LASS, 4
	object_event 57,  3, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE4_TM_WHIRLWIND, ETHER
	object_event 39,  3, SPRITE_HIKER, STAY, RIGHT, TEXT_ROUTE4_HIKER2
	object_event 41,  3, SPRITE_HIKER, STAY, LEFT, TEXT_ROUTE4_HIKER3

	def_warps_to ROUTE_4
