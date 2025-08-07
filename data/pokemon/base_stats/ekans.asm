	db DEX_EKANS ; pokedex id

	db  35,  60,  44,  55,  54
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/ekans.pic", 0, 1 ; sprite dimensions
	dw EkansPicFront, EkansPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,16
	m_tutor 18,23
	m_tutor 31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      GIGA_DRAIN,   \
	     IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    \
	     REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(EkansPicFront)
	assert BANK(EkansPicFront) == BANK(EkansPicBack)
