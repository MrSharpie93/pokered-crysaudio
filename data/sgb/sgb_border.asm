BorderPalettes:
IF DEF(_RED)
	INCBIN "gfx/sgb/singed_border.tilemap"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/soaked_border.tilemap"
ENDC

	ds $100

IF DEF(_RED)
	RGB 30,29,29 ; PAL_SGB1
	RGB 25,22,25
	RGB 24,9,5
	RGB 25,17,21
ENDC
IF DEF(_BLUE)
	RGB 0,0,0 ; PAL_SGB1 (the first color is not defined, but if used, turns up as 30,29,29... o_O)
	RGB 16,20,27
	RGB 5,9,20
	RGB 10,17,26
ENDC

	ds $18

IF DEF(_RED)
	RGB 30,29,29 ; PAL_SGB2
	RGB 31,27,14
	RGB 24,14,12
	RGB 10,10,10
ENDC
IF DEF(_BLUE)
	RGB 30,29,29 ; PAL_SGB2
	RGB 18,21,29
	RGB 24,14,12
	RGB 10,10,10
ENDC

	ds $18

IF DEF(_RED)
	RGB 30,29,29 ; PAL_SGB3
	RGB 31,19,21
	RGB 18,21,29
	RGB 10,10,10
ENDC
IF DEF(_BLUE)
	RGB 30,29,29 ; PAL_SGB3
	RGB 31,27,14
	RGB 29,12,14
	RGB 10,10,10
ENDC

	ds $18

SGBBorderGraphics:
IF DEF(_RED)
	INCBIN "gfx/sgb/singed_border.2bpp"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/soaked_border.2bpp"
ENDC
