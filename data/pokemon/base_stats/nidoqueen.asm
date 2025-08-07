	db DEX_NIDOQUEEN ; pokedex id

	db  90,  92,  87,  76,  85
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14,16
	m_tutor 17,18,19,20,22,23,24
	m_tutor 25,29,31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   FLAMETHROWER, \
	     SLUDGE_BOMB,  FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     CUT,          SURF,         STRENGTH
	; end

	db BANK(NidoqueenPicFront)
	assert BANK(NidoqueenPicFront) == BANK(NidoqueenPicBack)
