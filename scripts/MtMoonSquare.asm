MtMoonSquare_Script:
	jp EnableAutoTextBoxDrawing

MtMoonSquare_TextPointers:
	def_text_pointers
	dw_const MtMoonSquareClefairyText,  TEXT_MTMOONSQUARE_CLEFAIRY1
	dw_const MtMoonSquareClefairyText,  TEXT_MTMOONSQUARE_CLEFAIRY2
	dw_const MtMoonSquareClefairyText,  TEXT_MTMOONSQUARE_CLEFAIRY3
	dw_const MtMoonSquareSignText,      TEXT_MTMOONSQUARE_SIGN

MtMoonSquareSignText:
	text_far _MtMoonSquareSignText
	text_end

MtMoonSquareClefairyText:
	text_far _CeladonMansion1FClefairyText
	text_asm
	ld a, CLEFAIRY
	call PlayCry
	jp TextScriptEnd
