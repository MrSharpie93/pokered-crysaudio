SummerBeachHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

SummerBeachHouse_TextPointers:
	def_text_pointers
	dw_const SummerBeachHouseSurfinDudeText, TEXT_SUMMERBEACHHOUSE_SURFINDUDE
	dw_const SummerBeachHousePikachuText,    TEXT_SUMMERBEACHHOUSE_PIKACHU
	dw_const SummerBeachHousePoster1Text,    TEXT_SUMMERBEACHHOUSE_POSTER1
	dw_const SummerBeachHousePoster2Text,    TEXT_SUMMERBEACHHOUSE_POSTER2
	dw_const SummerBeachHousePoster3Text,    TEXT_SUMMERBEACHHOUSE_POSTER3
	dw_const SummerBeachHousePrinterText,    TEXT_SUMMERBEACHHOUSE_PRINTER

SummerBeachHouseSurfinDudeText:
	text_asm
	CheckEvent EVENT_GOT_SURFBOARD
	jr nz, .gotSurfboard
	ld hl, SurfinDudeGiveSurfboardText
	call PrintText
	lb bc, SURFBOARD, 1
	call GiveItem
	jr nc, .bagFull
	ld hl, SurfinDudeReceivedSurfboardText
	call PrintText
	SetEvent EVENT_GOT_SURFBOARD
	jr .done
.gotSurfboard
	ld hl, SurfinDudeGotSurfboardText
	call PrintText
	jr .done
.bagFull
	ld hl, SurfinDudeBagFullText
	call PrintText
.done
	jp TextScriptEnd

SurfinDudeGiveSurfboardText:
	text_far _SurfinDudeGiveSurfboardText
	text_end

SurfinDudeReceivedSurfboardText:
	text_far _SurfinDudeReceivedSurfboardText
	sound_get_key_item
	text_end

SurfinDudeGotSurfboardText:
	text_far _SurfinDudeGotSurfboardText
	text_end

SurfinDudeBagFullText:
	text_far _SurfinDudeBagFullText
	text_end

SummerBeachHousePikachuText:
	text_asm
	ld hl, .SummerBeachHousePikachuText
	call PrintText
	ld a, PIKACHU
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

.SummerBeachHousePikachuText
	text_far _SummerBeachHousePikachuText
	text_end

SummerBeachHousePoster1Text:
	text_far _SummerBeachHousePoster1Text
	text_end

SummerBeachHousePoster2Text:
	text_far _SummerBeachHousePoster2Text
	text_end

SummerBeachHousePoster3Text:
	text_far _SummerBeachHousePoster3Text
	text_end

SummerBeachHousePrinterText:
	text_far _SummerBeachHousePrinterText
	text_end
