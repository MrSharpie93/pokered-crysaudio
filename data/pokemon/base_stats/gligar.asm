	db DEX_GLIGAR ; pokedex id

	db  65,  75, 105,  85,  35
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 60; catch rate
	db 108 ; base exp

	INCBIN "gfx/pokemon/front/gligar.pic", 0, 1 ; sprite dimensions
	dw GligarPicFront, GligarPicBack

	; move tutor compatibility flags
	m_tutor 6,8
	m_tutor 10,13
	m_tutor 18,20,24
	m_tutor 26,30,31
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    AERIAL_ACE,   \
	     REST,         \
	     DARK_PULSE,   STEEL_WING,   ROCK_SLIDE,   \
	     CUT,          STRENGTH
	; end

	db BANK(GligarPicFront)
	assert BANK(GligarPicFront) == BANK(GligarPicBack)
