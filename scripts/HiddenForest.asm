HiddenForest_Script:
	jp EnableAutoTextBoxDrawing

HiddenForest_TextPointers:
	def_text_pointers
	dw_const MossRockText, TEXT_HIDDENFOREST_MOSS_ROCK
	
MossRockText:
	text_far _MossRockText
	text_end