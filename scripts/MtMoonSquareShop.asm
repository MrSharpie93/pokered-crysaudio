MtMoonSquareShop_Script:
	jp EnableAutoTextBoxDrawing

MtMoonSquareShop_TextPointers:
	def_text_pointers
	dw_const MtMoonSquareShopGrandpaText,         TEXT_MTMOONSQUARESHOP_GRANDPA
	dw_const MtMoonSquareShopBrunetteGirlText,    TEXT_MTMOONSQUARESHOP_BRUNETTE_GIRL

MtMoonSquareShopBrunetteGirlText:
	text_far _MtMoonSquareShopBrunetteGirlText
	text_end
	
MtMoonSquareShopGrandpaText::
	script_mart POKE_DOLL, FRESH_WATER, SODA_POP, LEMONADE, SUN_STONE, MOON_STONE
