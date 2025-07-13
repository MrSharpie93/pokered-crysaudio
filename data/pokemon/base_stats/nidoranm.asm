	db DEX_NIDORAN_M ; pokedex id

	db  46,  57,  40,  50,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

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
	     SLUDGE_BOMB,  FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         \
	     \
	     CUT,          STRENGTH
	; end

	db BANK(NidoranMPicFront)
	assert BANK(NidoranMPicFront) == BANK(NidoranMPicBack)
