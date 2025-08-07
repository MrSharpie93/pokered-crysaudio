	db DEX_GLISCOR ; pokedex id

	db  75,  95, 125,  95,  45
	;   hp  atk  def  spd  spc

	db GROUND, FLYING ; type
	db 30; catch rate
	db 192 ; base exp

	INCBIN "gfx/pokemon/front/gliscor.pic", 0, 1 ; sprite dimensions
	dw GliscorPicFront, GliscorPicBack

	; move tutor compatibility flags
	m_tutor 6,8
	m_tutor 10,13
	m_tutor 18,20,24
	m_tutor 26,30,31
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    AERIAL_ACE,   \
	     REST,         \
	     DARK_PULSE,   STEEL_WING,   ROCK_SLIDE,   \
	     CUT,          FLY,          STRENGTH
	; end

	db BANK(GliscorPicFront)
	assert BANK(GliscorPicFront) == BANK(GliscorPicBack)
