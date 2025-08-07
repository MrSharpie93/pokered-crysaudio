	db DEX_SYLVEON ; pokedex id

	db 110,  65,  65,  60, 130
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/sylveon.pic", 0, 1 ; sprite dimensions
	dw SylveonPicFront, SylveonPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13
	m_tutor 0
	m_tutor 26
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     REST,         \
		 DAZZLINGLEAM, \
		 CUT,          FLASH
	; end

	db BANK(SylveonPicFront)
	assert BANK(SylveonPicFront) == BANK(SylveonPicBack)
