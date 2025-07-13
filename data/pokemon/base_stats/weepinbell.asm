	db DEX_WEEPINBELL ; pokedex id

	db  65,  90,  50,  55,  85
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 151 ; base exp

	INCBIN "gfx/pokemon/front/weepinbell.pic", 0, 1 ; sprite dimensions
	dw WeepinbellPicFront, WeepinbellPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,15
	m_tutor 23
	m_tutor 32
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    \
	     \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     SLUDGE_BOMB,  \
	     BULLET_SEED,  REST,         \
	     \
	     CUT,          FLASH
	; end

	db BANK(WeepinbellPicFront)
	assert BANK(WeepinbellPicFront) == BANK(WeepinbellPicBack)
