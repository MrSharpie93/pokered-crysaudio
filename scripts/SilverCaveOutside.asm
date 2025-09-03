SilverCaveOutside_Script:
	jp EnableAutoTextBoxDrawing

SilverCaveOutside_TextPointers:
	def_text_pointers
	dw_const PokeCenterSignText,        TEXT_SILVERCAVEOUTSIDE_POKECENTER_SIGN
	dw_const SilverCaveOutsideSignText, TEXT_SILVERCAVEOUTSIDE_SIGN

SilverCaveOutsideSignText:
	text_far _SilverCaveOutsideSignText
	text_end
