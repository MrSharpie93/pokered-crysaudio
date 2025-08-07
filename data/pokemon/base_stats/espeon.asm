	db DEX_ESPEON ; pokedex id

	db  65,  65,  60, 110, 130
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/espeon.pic", 0, 1 ; sprite dimensions
	dw EspeonPicFront, EspeonPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,11,13
	m_tutor 0
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      \
	     SOLARBEAM,    IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         \
		 DAZZLINGLEAM, \
		 CUT,          FLASH
	; end

	db BANK(EspeonPicFront)
	assert BANK(EspeonPicFront) == BANK(EspeonPicBack)
