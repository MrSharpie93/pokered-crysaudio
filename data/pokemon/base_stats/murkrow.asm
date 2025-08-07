	db DEX_MURKROW ; pokedex id

	db  60,  85,  42,  91,  85
	;   hp  atk  def  spd  spc

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/murkrow.pic", 0, 1 ; sprite dimensions
	dw MurkrowPicFront, MurkrowPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,11,13
	m_tutor 21
	m_tutor 26,30
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     AERIAL_ACE,   \
	     REST,         THUNDER_WAVE, \
	     DARK_PULSE,   STEEL_WING,   \
	     FLY
	; end

	db BANK(MurkrowPicFront)
	assert BANK(MurkrowPicFront) == BANK(MurkrowPicBack)
