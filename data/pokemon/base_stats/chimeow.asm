	db DEX_CHIMEOW ; pokedex id

	db  45,  35,  40,  75,  55
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 255 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/chimeow.pic", 0, 1 ; sprite dimensions
	dw ChimeowPicFront, ChimeowPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,11,13
	m_tutor 17
	m_tutor 26
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      \
	     IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   \
	     CUT,          FLASH
	; end

	db BANK(ChimeowPicFront)
	assert BANK(ChimeowPicFront) == BANK(ChimeowPicBack)
