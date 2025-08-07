	db DEX_HONCHKROW ; pokedex id

	db 100, 125,  52,  71, 105
	;   hp  atk  def  spd  spc

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/honchkrow.pic", 0, 1 ; sprite dimensions
	dw HonchkrowPicFront, HonchkrowPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,11,13
	m_tutor 21
	m_tutor 26,30
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     AERIAL_ACE,   \
	     REST,         THUNDER_WAVE, \
	     DARK_PULSE,   STEEL_WING,   \
	     FLY
	; end

	db BANK(HonchkrowPicFront)
	assert BANK(HonchkrowPicFront) == BANK(HonchkrowPicBack)
