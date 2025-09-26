	object_const_def

HiddenForest_Object:
	db $02 ; border block

	def_warp_events
	warp_event 0,  7, VIRIDIAN_FOREST, 7
	warp_event 0,  8, VIRIDIAN_FOREST, 7

	def_bg_events

	def_object_events

	def_warps_to HIDDEN_FOREST
