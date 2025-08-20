SilverCavePokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

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
