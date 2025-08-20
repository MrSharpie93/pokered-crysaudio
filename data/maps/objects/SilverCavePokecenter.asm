	object_const_def
	const_export SILVERCAVEPOKECENTER_NURSE
	const_export SILVERCAVEPOKECENTER_GRANNY
	const_export SILVERCAVEPOKECENTER_LINK_RECEPTIONIST

SilverCavePokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 2
	warp_event  4,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, TEXT_SILVERCAVEPOKECENTER_NURSE
	object_event  7,  3, SPRITE_GRANNY, STAY, DOWN, TEXT_SILVERCAVEPOKECENTER_GRANNY
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_SILVERCAVEPOKECENTER_LINK_RECEPTIONIST

	def_warps_to SILVER_CAVE_POKECENTER
