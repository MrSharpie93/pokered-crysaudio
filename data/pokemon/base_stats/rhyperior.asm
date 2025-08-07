	db DEX_RHYPERIOR ; pokedex id

	db 115, 140, 130,  40,  55
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 30 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/rhyperior.pic", 0, 1 ; sprite dimensions
	dw RhyperiorPicFront, RhyperiorPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,13,14,16
	m_tutor 17,18,20,22,24
	m_tutor 31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  DRAGON_CLAW,  SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     FLASH_CANNON, IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  POISON_JAB,   FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     CUT,          SURF,         STRENGTH
	; end

	db BANK(RhyperiorPicFront)
	assert BANK(RhyperiorPicFront) == BANK(RhyperiorPicBack)
