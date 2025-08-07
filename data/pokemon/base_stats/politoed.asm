	db DEX_POLITOED ; pokedex id

	db  90,  75,  75,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/politoed.pic", 0, 1 ; sprite dimensions
	dw PolitoedPicFront, PolitoedPicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 9,10,13
	m_tutor 18,24
	m_tutor 25,28
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    \
	     DOUBLE_TEAM,  \
	     \
	     ZEN_HEADBUTT, REST,         \
	     ICICLE_CRASH, \
	     SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(PolitoedPicFront)
	assert BANK(PolitoedPicFront) == BANK(PolitoedPicBack)
