	object_const_def
	const_export PLAYERSHOUSE_MOMS_LETTER

PlayersHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  7, NEW_BARK_TOWN, 1
	warp_event  5,  7, NEW_BARK_TOWN, 1
IF DEF(_DEBUG)
	warp_event  9,  1, TOHJO_FALLS, 1
	warp_event  9,  2, MT_MOON_SQUARE, 1
	warp_event  9,  3, CELADON_MANSION_2F, 1
ENDC

	def_bg_events
	bg_event  5,  1, TEXT_PLAYERSHOUSE_TV
	bg_event  0,  1, TEXT_PLAYERSHOUSE_PC

	def_object_events
	object_event  2,  1, SPRITE_PAPER, STAY, NONE, TEXT_PLAYERSHOUSE_MOMS_LETTER

	def_warps_to PLAYERS_HOUSE
