	db DEX_LOUDRED ; pokedex id

	db  84,  71,  43,  48,  71
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 126 ; base exp

	INCBIN "gfx/pokemon/front/loudred.pic", 0, 1 ; sprite dimensions
	dw LoudredPicFront, LoudredPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14
	m_tutor 18
	m_tutor 25,31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     SOLARBEAM,    \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(LoudredPicFront)
	assert BANK(LoudredPicFront) == BANK(LoudredPicBack)
