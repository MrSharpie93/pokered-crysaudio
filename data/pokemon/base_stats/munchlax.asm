	db DEX_MUNCHLAX ; pokedex id

	db 135,  85,  40,   5,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 50 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/munchlax.pic", 0, 1 ; sprite dimensions
	dw MunchlaxPicFront, MunchlaxPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14
	m_tutor 17,18,19,22,23,24
	m_tutor 25,28
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     SLUDGE_BOMB,  FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     SURF,         STRENGTH
	; end

	db BANK(MunchlaxPicFront)
	assert BANK(MunchlaxPicFront) == BANK(MunchlaxPicBack)
