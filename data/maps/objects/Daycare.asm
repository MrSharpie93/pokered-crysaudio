	object_const_def
	const_export DAYCARE_GENTLEMAN
	const_export DAYCARE_MELANIE

Daycare_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_DAYCARE_GENTLEMAN
	object_event  5,  3, SPRITE_GIRL, STAY, DOWN, TEXT_DAYCARE_MELANIE

	def_warps_to DAYCARE
