	db DEX_POLIWRATH ; pokedex id

	db  90,  95,  95,  70,  70
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

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
	     DOUBLE_TEAM,  POISON_JAB,   \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(PoliwrathPicFront)
	assert BANK(PoliwrathPicFront) == BANK(PoliwrathPicBack)
