	db DEX_NOIVERN ; pokedex id

	db  85,  70,  80, 123,  97
	;   hp  atk  def  spd  spc

	db FLYING, DRAGON ; type
	db 45; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/noivern.pic", 0, 1 ; sprite dimensions
	dw NoivernPicFront, NoivernPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,11,13,16
	m_tutor 17,19,21
	m_tutor 25,26,29,30,31
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  GIGA_DRAIN,   \
	     SOLARBEAM,    IRON_TAIL,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  FLAMETHROWER, \
	     AERIAL_ACE,   \
	     HURRICANE,    REST,         \
	     DARK_PULSE,   STEEL_WING,   \
	     CUT,          FLY
	; end

	db BANK(NoivernPicFront)
	assert BANK(NoivernPicFront) == BANK(NoivernPicBack)
