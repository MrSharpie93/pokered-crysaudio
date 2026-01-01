	object_const_def
	const_export PLAYERSHOUSE_MOMS_LETTER

PlayersHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  7, NEW_BARK_TOWN, 1
	warp_event  5,  7, NEW_BARK_TOWN, 1
IF DEF(_DEBUG)
	warp_event  9,  4, CELADON_MART_ROOF, 1
	warp_event  9,  5, MT_MOON_SQUARE, 1
	warp_event  9,  6, SS_ANNE_CAPTAINS_ROOM, 1
	warp_event  9,  7, ROCKET_HIDEOUT_B4F, 1
ENDC

	def_bg_events
	bg_event  5,  1, TEXT_PLAYERSHOUSE_TV
	bg_event  0,  1, TEXT_PLAYERSHOUSE_PC
	bg_event  9,  0, TEXT_PLAYERSHOUSE_MIRROR

	def_object_events
	object_event  2,  1, SPRITE_PAPER, STAY, NONE, TEXT_PLAYERSHOUSE_MOMS_LETTER

	def_warps_to PLAYERS_HOUSE
