CeruleanBadgeHouse_Script: ; ~$~CHANGED: Made this guy a move tutor, so I can get rid of all this outdated crap.~$~
	jp EnableAutoTextBoxDrawing

CeruleanBadgeHouse_TextPointers:
	def_text_pointers
	dw_const CeruleanBadgeHouseMiddleAgedManText, TEXT_CERULEANBADGEHOUSE_MIDDLE_AGED_MAN
	dw_const CeruleanBadgeHouseTrashText,         TEXT_CERULEANBADGEHOUSE_TRASH

CeruleanBadgeHouseMiddleAgedManText:
	text_far _IcyWindTutorText
	text_asm
	ld a, 7 ; ICY_WIND
	ld [wWhichTrade], a
	callfar MoveTutorScript
	jp TextScriptEnd
	
CeruleanBadgeHouseTrashText:
	text_far _CeruleanBadgeHouseTrashText
	text_end
