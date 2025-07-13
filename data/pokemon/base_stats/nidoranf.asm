	db DEX_NIDORAN_F ; pokedex id

	db  55,  47,  52,  41,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1 ; sprite dimensions
	dw NidoranFPicFront, NidoranFPicBack

	; move tutor compatibility flags
	m_tutor 6,8
	m_tutor 10,13,14
	m_tutor 17,23
	m_tutor 25,31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   FLAMETHROWER, \
	     SLUDGE_BOMB,  FIRE_BLAST,   AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     \
	     CUT,          STRENGTH
	; end

	db BANK(NidoranFPicFront)
	assert BANK(NidoranFPicFront) == BANK(NidoranFPicBack)
