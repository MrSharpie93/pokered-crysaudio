	db DEX_JOLTIK ; pokedex id

	db  50,  47,  50,  65,  57
	;   hp  atk  def  spd  spc

	db BUG, ELECTRIC ; type
	db 190 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/joltik.pic", 0, 1 ; sprite dimensions
	dw JoltikPicFront, JoltikPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,14,15
	m_tutor 19
	m_tutor 27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      \
	     \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     \
	     REST,         THUNDER_WAVE, \
	     \
	     CUT,          FLASH
	; end

	db BANK(JoltikPicFront)
	assert BANK(JoltikPicFront) == BANK(JoltikPicBack)
