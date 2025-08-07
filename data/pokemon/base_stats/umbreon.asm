	db DEX_UMBREON ; pokedex id

	db  65,  65, 110,  60, 130
	;   hp  atk  def  spd  spc

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/umbreon.pic", 0, 1 ; sprite dimensions
	dw UmbreonPicFront, UmbreonPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13
	m_tutor 0
	m_tutor 26
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    \
	     DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     REST,         \
		 DARK_PULSE,   \
		 CUT,          FLASH
	; end

	db BANK(UmbreonPicFront)
	assert BANK(UmbreonPicFront) == BANK(UmbreonPicBack)
