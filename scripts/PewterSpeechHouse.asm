PewterSpeechHouse_Script:
	jp EnableAutoTextBoxDrawing

PewterSpeechHouse_TextPointers:
	def_text_pointers
	dw_const PewterSpeechHouseGamblerText,   TEXT_PEWTERSPEECHHOUSE_GAMBLER
	dw_const PewterSpeechHouseYoungsterText, TEXT_PEWTERSPEECHHOUSE_YOUNGSTER

PewterSpeechHouseGamblerText:
	text_asm
	CheckEvent EVENT_BEAT_BROCK
	jr nz, .tutor
	ld hl, .NoTutorText
	call PrintText
	jr .done
.tutor
	ld hl, .YesTutorText
	call PrintText
	ld a, 6 ; MUD_SLAP
	ld [wWhichTrade], a
	callfar MoveTutorScript
.done
	jp TextScriptEnd
	
.NoTutorText:
	text_far _PewterSpeechHouseGamblerText
	text_end
	
.YesTutorText:
	text_far _MudSlapTutorText
	text_end

PewterSpeechHouseYoungsterText:
	text_far _PewterSpeechHouseYoungsterText
	text_end
