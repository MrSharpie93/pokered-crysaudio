	db DEX_MISSINGNO ; pokedex id

	db 178, 136,  40,  29,  29
	;   hp  atk  def  spd  spc

	db BIRD, NORMAL ; type
	db 29 ; catch rate
	db 222 ; base exp

	INCBIN "gfx/pokemon/front/missingno.pic", 0, 1 ; sprite dimensions
	dw MissingNoPicFront, MissingNoPicBack

	; move tutor compatibility flags
	m_tutor 4,5
	m_tutor 9,13
	m_tutor 21
	m_tutor 30
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  DRAGON_CLAW,  SWORDS_DANCE, BRUTAL_SWING, \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      GIGA_DRAIN,   SAFEGUARD,    \
	     THUNDER,      \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    SHADOW_BALL,  \
	     \
	     \
	     HURRICANE,    REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, ICICLE_CRASH, \
	     CUT,          FLY
	; end

	db BANK(MissingNoPicFront)
	assert BANK(MissingNoPicFront) == BANK(MissingNoPicBack)
