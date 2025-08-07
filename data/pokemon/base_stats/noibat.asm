	db DEX_NOIBAT ; pokedex id

	db  40,  30,  35,  55,  45
	;   hp  atk  def  spd  spc

	db FLYING, DRAGON ; type
	db 190; catch rate
	db 63 ; base exp

	INCBIN "gfx/pokemon/front/noibat.pic", 0, 1 ; sprite dimensions
	dw NoibatPicFront, NoibatPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,11,13,16
	m_tutor 17,19,21
	m_tutor 25,26,30,31
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, DOUBLE_EDGE,  \
	     \
	     PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    IRON_TAIL,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  \
	     AERIAL_ACE,   \
	     HURRICANE,    REST,         \
	     DARK_PULSE,   STEEL_WING,   \
	     CUT,          FLY
	; end

	db BANK(NoibatPicFront)
	assert BANK(NoibatPicFront) == BANK(NoibatPicBack)
