	db DEX_JUMPLUFF ; pokedex id

	db  75,  55,  70, 110,  85
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp

	INCBIN "gfx/pokemon/front/jumpluff.pic", 0, 1 ; sprite dimensions
	dw JumpluffPicFront, JumpluffPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,15
	m_tutor 0
	m_tutor 30,32
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   SAFEGUARD,    \
	     SOLARBEAM,    \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     BULLET_SEED,  HURRICANE,    REST,         \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(JumpluffPicFront)
	assert BANK(JumpluffPicFront) == BANK(JumpluffPicBack)
