	db DEX_BELLUNA ; pokedex id

	db  70,  45,  70,  95,  95
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/belluna.pic", 0, 1 ; sprite dimensions
	dw BellunaPicFront, BellunaPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,11,13
	m_tutor 17
	m_tutor 26
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      \
	     IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   \
	     CUT,          FLASH
	; end

	db BANK(BellunaPicFront)
	assert BANK(BellunaPicFront) == BANK(BellunaPicBack)
