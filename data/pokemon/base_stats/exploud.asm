	db DEX_EXPLOUD ; pokedex id

	db 104,  91,  63,  68,  91
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/exploud.pic", 0, 1 ; sprite dimensions
	dw ExploudPicFront, ExploudPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14
	m_tutor 18
	m_tutor 25,31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     SOLARBEAM,    \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     SURF,         STRENGTH
	; end

	db BANK(ExploudPicFront)
	assert BANK(ExploudPicFront) == BANK(ExploudPicBack)
