	db DEX_GLACEON ; pokedex id

	db  65,  60, 110,  65, 130
	;   hp  atk  def  spd  spc

	db ICE, ICE ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/glaceon.pic", 0, 1 ; sprite dimensions
	dw GlaceonPicFront, GlaceonPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,13
	m_tutor 0
	m_tutor 25,26,27
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    \
	     DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
		 REST,         \
		 ICICLE_CRASH, \
		 STRENGTH
	; end

	db BANK(GlaceonPicFront)
	assert BANK(GlaceonPicFront) == BANK(GlaceonPicBack)
