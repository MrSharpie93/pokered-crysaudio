	object_const_def
	const_export NEWBARKTOWN_COOLTRAINER_F
	const_export NEWBARKTOWN_FISHER

NewBarkTown_Object:
	db $05 ; border block

	def_warp_events
	warp_event  3, 11, REDS_HOUSE_1F, 1 ; player house

	def_bg_events
	bg_event  3,  3, TEXT_NEWBARKTOWN_ELMSLAB_SIGN
	bg_event  8,  8, TEXT_NEWBARKTOWN_SIGN
	bg_event  6, 11, TEXT_NEWBARKTOWN_PLAYERSHOUSE_SIGN
	bg_event 11,  5, TEXT_NEWBARKTOWN_GOLDSHOUSE_SIGN
	bg_event  9, 13, TEXT_NEWBARKTOWN_ELMSHOUSE_SIGN
	bg_event  2,  8, TEXT_NEWBARKTOWN_ROADWORK1
	bg_event  2,  9, TEXT_NEWBARKTOWN_ROADWORK2

	def_object_events
	object_event  6,  8, SPRITE_COOLTRAINER_F, WALK, ANY_DIR, TEXT_NEWBARKTOWN_COOLTRAINER_F
	object_event 12,  9, SPRITE_FISHER, WALK, UP_DOWN, TEXT_NEWBARKTOWN_FISHER

	def_warps_to NEW_BARK_TOWN