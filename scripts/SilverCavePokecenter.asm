SilverCavePokecenter_Script:
	call .markAsVisited
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing
.markAsVisited
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	lb bc, FLAG_SET, FLYLOC_SILVER_CAVE_CENTER
	ld hl, wTownVisitedFlag
	predef_jump FlagActionPredef

SilverCavePokecenter_TextPointers:
	def_text_pointers
	dw_const SilverCavePokecenterNurseText,            TEXT_SILVERCAVEPOKECENTER_NURSE
	dw_const SilverCavePokecenterGrannyText,           TEXT_SILVERCAVEPOKECENTER_GRANNY
	dw_const SilverCavePokecenterLinkReceptionistText, TEXT_SILVERCAVEPOKECENTER_LINK_RECEPTIONIST

SilverCavePokecenterNurseText:
	script_pokecenter_nurse

SilverCavePokecenterGrannyText:
	text_far _SilverCavePokecenterGrannyText
	text_end

SilverCavePokecenterLinkReceptionistText:
	script_cable_club_receptionist
