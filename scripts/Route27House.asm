Route27House_Script:
	jp EnableAutoTextBoxDrawing

Route27House_TextPointers:
	def_text_pointers
	dw_const Route27HouseHikerText, TEXT_ROUTE27HOUSE_HIKER

Route27HouseHikerText:
	text_far _EarthPowerTutorText
	text_asm
	ld a, 24 ; EARTH_POWER
	ld [wWhichTrade], a
	callfar MoveTutorScript
	jp TextScriptEnd
