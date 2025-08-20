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

	def_object_events

	def_warps_to NEW_BARK_TOWN