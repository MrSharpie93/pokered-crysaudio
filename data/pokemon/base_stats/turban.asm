	db DEX_TURBAN ; pokedex id

	db  50, 115, 160,  50,  65
	;   hp  atk  def  spd  spc

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/turban.pic", 0, 1 ; sprite dimensions
	dw TurbanPicFront, TurbanPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,12,13
	m_tutor 18,20,24
	m_tutor 25,26,27
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    \
	     REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     CUT,          SURF,         \
	     WATERFALL
	; end

	db BANK(TurbanPicFront)
	assert BANK(TurbanPicFront) == BANK(TurbanPicBack)
