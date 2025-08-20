	object_const_def
	const_export MTMOONSQUARESHOP_GRANDPA
	const_export MTMOONSQUARESHOP_BRUNETTE_GIRL

MtMoonSquareShop_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, MT_MOON_SQUARE, 2
	warp_event  4,  7, MT_MOON_SQUARE, 2

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_GRAMPS, STAY, DOWN, TEXT_MTMOONSQUARESHOP_GRANDPA
	object_event  1,  6, SPRITE_BRUNETTE_GIRL, WALK, LEFT_RIGHT, TEXT_MTMOONSQUARESHOP_BRUNETTE_GIRL

	def_warps_to MT_MOON_SQUARE_SHOP
