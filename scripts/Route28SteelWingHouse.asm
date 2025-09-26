Route28SteelWingHouse_Script:
	jp EnableAutoTextBoxDrawing

Route28SteelWingHouse_TextPointers:
	def_text_pointers
	dw_const Route28SteelWingHouseCelebrityText,  TEXT_ROUTE28STEELWINGHOUSE_CELEBRITY
	dw_const Route28SteelWingHouseFearowText,     TEXT_ROUTE28STEELWINGHOUSE_FEAROW

Route28SteelWingHouseCelebrityText:
	text_asm
	CheckEvent EVENT_GOT_TM47
	jr nz, .gotTM47
	ld hl, CelebrityGiveTM47Text
	call PrintText
	lb bc, TM_STEEL_WING, 1
	call GiveItem
	jr nc, .bagFull
	ld hl, CelebrityReceivedTM47Text
	call PrintText
	SetEvent EVENT_GOT_TM47
.gotTM47
	ld hl, CelebrityGotTM47Text
	call PrintText
	jr .done
.bagFull
	ld hl, CelebrityBagFullText
	call PrintText
.done
	jp TextScriptEnd

CelebrityGiveTM47Text:
	text_far _CelebrityGiveTM47Text
	text_end

CelebrityReceivedTM47Text:
	text_far _CelebrityReceivedTM47Text
	sound_get_item_1
	text_end

CelebrityGotTM47Text:
	text_far _CelebrityGotTM47Text
	text_end

CelebrityBagFullText:
	text_far _CelebrityBagFullText
	text_end

Route28SteelWingHouseFearowText:
	text_asm
	ld hl, .Route28SteelWingHouseFearowText
	call PrintText
	ld a, FEAROW
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

.Route28SteelWingHouseFearowText
	text_far _Route28SteelWingHouseFearowText
	text_end
