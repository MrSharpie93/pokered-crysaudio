	db DEX_HAUNTER ; pokedex id

	db  45,  50,  45,  95, 115
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp

	INCBIN "gfx/pokemon/front/haunter.pic", 0, 1 ; sprite dimensions
	dw HaunterPicFront, HaunterPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,7
	m_tutor 10,11,12,13,15
	m_tutor 17,23
	m_tutor 28,31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        OMINOUS_WIND, DOUBLE_EDGE,  \
	     \
	     PROTECT,      FOCUS_BLAST,  GIGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  POISON_JAB,   \
	     SLUDGE_BOMB,  WILL_O_WISP,  \
	     REST,         THUNDER_WAVE, \
	     DARK_PULSE,   DAZZLINGLEAM
	; end

	db BANK(HaunterPicFront)
	assert BANK(HaunterPicFront) == BANK(HaunterPicBack)
