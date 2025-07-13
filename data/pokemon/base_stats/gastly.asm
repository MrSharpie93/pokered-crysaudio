	db DEX_GASTLY ; pokedex id

	db  30,  35,  30,  80, 100
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp

	INCBIN "gfx/pokemon/front/gastly.pic", 0, 1 ; sprite dimensions
	dw GastlyPicFront, GastlyPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,7 ; Gastly can learn the elemental punches via breeding or tutoring...somehow.
	m_tutor 10,11,12,13,15
	m_tutor 23
	m_tutor 31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, DOUBLE_EDGE,  \
	     \
	     PROTECT,      FOCUS_BLAST,  GIGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     SLUDGE_BOMB,  WILL_O_WISP,  \
	     REST,         THUNDER_WAVE, \
	     DARK_PULSE,   DAZZLINGLEAM
	; end

	db BANK(GastlyPicFront)
	assert BANK(GastlyPicFront) == BANK(GastlyPicBack)
