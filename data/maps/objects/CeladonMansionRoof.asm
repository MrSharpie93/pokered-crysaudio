	object_const_def
	const_export CELADONMANSION_ROOF_CURSE_STORYTELLER

CeladonMansionRoof_Object:
	db $9 ; border block

	def_warp_events
	warp_event  6,  1, CELADON_MANSION_3F, 2
	warp_event  2,  1, CELADON_MANSION_3F, 3
	warp_event  2,  7, CELADON_MANSION_ROOF_HOUSE, 1

	def_bg_events
	bg_event  3,  7, TEXT_CELADONMANSIONROOF_HOUSE_SIGN
	bg_event  2,  4, TEXT_CELADONMANSIONROOF_GRAFFITI

	def_object_events
	object_event 1, 10, SPRITE_SILPH_WORKER_F, STAY, DOWN, TEXT_CELADONMANSION_ROOF_CURSE_STORYTELLER

	def_warps_to CELADON_MANSION_ROOF
