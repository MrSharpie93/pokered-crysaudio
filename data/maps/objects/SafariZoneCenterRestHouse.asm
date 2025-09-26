	object_const_def
	const_export SAFARIZONECENTERRESTHOUSE_GIRL
	const_export SAFARIZONECENTERRESTHOUSE_SCIENTIST

SafariZoneCenterRestHouse_Object:
	db $17 ; border block

	def_warp_events
	warp_event  4,  7, SAFARI_ZONE_CENTER, 9
	warp_event  5,  7, SAFARI_ZONE_CENTER, 9

	def_bg_events
	bg_event  3,  0, TEXT_SAFARIZONECENTERRESTHOUSE_DETAILS

	def_object_events
	object_event  5,  2, SPRITE_GIRL, STAY, DOWN, TEXT_SAFARIZONECENTERRESTHOUSE_GIRL
	object_event  3,  4, SPRITE_SCIENTIST, WALK, UP_DOWN, TEXT_SAFARIZONECENTERRESTHOUSE_SCIENTIST

	def_warps_to SAFARI_ZONE_CENTER_REST_HOUSE
