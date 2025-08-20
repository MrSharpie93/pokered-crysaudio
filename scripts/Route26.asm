Route26_Script:
	jp EnableAutoTextBoxDrawing

Route26_TextPointers:
	def_text_pointers
	dw_const Route26SignText, TEXT_ROUTE26_SIGN

Route26SignText:
	text_far _Route26SignText
	text_end
