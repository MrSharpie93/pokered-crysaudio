CeladonMansionRoof_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansionRoof_TextPointers:
	def_text_pointers
	dw_const CeladonMansionRoofCurseStoryText,    TEXT_CELADONMANSION_ROOF_CURSE_STORYTELLER
	dw_const CeladonMansionRoofHouseSignText,     TEXT_CELADONMANSIONROOF_HOUSE_SIGN
	dw_const CeladonMansionRoofGraffitiText,      TEXT_CELADONMANSIONROOF_GRAFFITI

CeladonMansionRoofCurseStoryText:
	text_asm
	CheckEvent EVENT_GOT_TM04
	jr nz, .got_item
	ld hl, .CurseStoryText
	call PrintText
	lb bc, TM_CURSE, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedTM04Text
	call PrintText
	SetEvent EVENT_GOT_TM04
	jr .done
.bag_full
	ld hl, .TM04NoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .TM04ExplanationText
	call PrintText
.done
	jp TextScriptEnd

.CurseStoryText:
	text_far _CurseStoryText
	text_end

.ReceivedTM04Text:
	text_far _ReceivedTM04Text
	sound_get_item_1
	text_end

.TM04ExplanationText:
	text_far _TM04ExplanationText
	text_end

.TM04NoRoomText:
	text_far _TM04NoRoomText
	text_end

CeladonMansionRoofHouseSignText:
	text_far _CeladonMansionRoofHouseSignText
	text_end
	
CeladonMansionRoofGraffitiText:
	text_far _CeladonMansionRoofGraffitiText
	text_end
