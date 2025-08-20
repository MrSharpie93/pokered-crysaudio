Route27_Script:
	jp EnableAutoTextBoxDrawing

Route27_TextPointers:
	def_text_pointers
	dw_const Route27SignText, TEXT_ROUTE27_SIGN

Route27SignText:
	text_far _Route27SignText
	text_end
