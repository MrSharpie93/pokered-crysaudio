	object_const_def
	const_export DAYCARE_GENTLEMAN
	const_export DAYCARE_MELANIE
	const_export DAYCARE_BULBASAUR
	const_export DAYCARE_ODDISH
	const_export DAYCARE_SANDSHREW

Daycare_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_DAYCARE_GENTLEMAN
	object_event  5,  3, SPRITE_GIRL, STAY, DOWN, TEXT_DAYCARE_MELANIE
	object_event  4,  1, SPRITE_BULBASAUR, STAY, DOWN, TEXT_DAYCARE_BULBASAUR
	object_event  0,  5, SPRITE_ODDISH, STAY, RIGHT, TEXT_DAYCARE_ODDISH
	object_event  5,  7, SPRITE_SANDSHREW, STAY, LEFT, TEXT_DAYCARE_SANDSHREW

	def_warps_to DAYCARE
