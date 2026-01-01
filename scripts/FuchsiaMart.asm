FuchsiaMart_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMart_TextPointers:
	def_text_pointers
	dw_const FuchsiaMartClerkText,         TEXT_FUCHSIAMART_CLERK
	dw_const FuchsiaMartMiddleAgedManText, TEXT_FUCHSIAMART_MIDDLE_AGED_MAN
	dw_const FuchsiaMartCooltrainerFText,  TEXT_FUCHSIAMART_COOLTRAINER_F

FuchsiaMartMiddleAgedManText:
	text_far _FuchsiaMartMiddleAgedManText
	text_end

FuchsiaMartCooltrainerFText:
	text_far _FuchsiaMartCooltrainerFText
	text_end
	
FuchsiaMartClerkText::
	script_mart SAFARI_BALL, MOOMOO_MILK, ELIXER, REVIVE, FULL_HEAL, SUPER_REPEL
