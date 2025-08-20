	object_const_def
	const_export MTMOONSQUARE_CLEFAIRY1
	const_export MTMOONSQUARE_CLEFAIRY2
	const_export MTMOONSQUARE_CLEFAIRY3

MtMoonSquare_Object:
	db $f ; border block

	def_warp_events
	warp_event 22, 11, MT_MOON_B1F, 10
	warp_event 13,  7, MT_MOON_SQUARE_SHOP, 1

	def_bg_events
	bg_event 17,  7, TEXT_MTMOONSQUARE_SIGN

	def_object_events
	object_event  6,  6, SPRITE_FAIRY, WALK, UP_DOWN, TEXT_MTMOONSQUARE_CLEFAIRY1
	object_event  9,  6, SPRITE_FAIRY, WALK, LEFT_RIGHT, TEXT_MTMOONSQUARE_CLEFAIRY2
	object_event  6,  9, SPRITE_FAIRY, WALK, LEFT_RIGHT, TEXT_MTMOONSQUARE_CLEFAIRY3

	def_warps_to MT_MOON_SQUARE
