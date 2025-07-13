	db DEX_MEW ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/mew.pic", 0, 1 ; sprite dimensions
	dw MewPicFront, MewPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,11,12,13,14,15,16
	m_tutor 17,18,19,20,21,22,23,24
	m_tutor 25,26,27,28,29,30,31,32
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  DRAGON_CLAW,  SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  GIGA_DRAIN,   SAFEGUARD,    \
	     FLASH_CANNON, SOLARBEAM,    IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      POISON_JAB,   FLAMETHROWER, \
	     SLUDGE_BOMB,  WILL_O_WISP,  FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     BULLET_SEED,  ZEN_HEADBUTT, HURRICANE,    REST,         THUNDER_WAVE, \
	     DARK_PULSE,   STEEL_WING,   ROCK_SLIDE,   DAZZLINGLEAM, ICICLE_CRASH, \
	     CUT,          FLY,          SURF,         STRENGTH,     FLASH,        \
	     WATERFALL
	; end

	db BANK(MewPicFront)
	assert BANK(MewPicFront) == BANK(MewPicBack)
