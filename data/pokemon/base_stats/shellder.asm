	db DEX_SHELLDER ; pokedex id

	db  30,  65, 100,  40,  45
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp

	INCBIN "gfx/pokemon/front/shellder.pic", 0, 1 ; sprite dimensions
	dw ShellderPicFront, ShellderPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,12,13
	m_tutor 0
	m_tutor 25,26,27
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     \
	     DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     REST,         \
	     ICICLE_CRASH, \
	     SURF,         \
	     WATERFALL
	; end

	db BANK(ShellderPicFront)
	assert BANK(ShellderPicFront) == BANK(ShellderPicBack)
