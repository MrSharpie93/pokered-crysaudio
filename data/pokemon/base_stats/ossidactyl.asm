	db DEX_OSSIDACTYL ; pokedex id

	db  90,  98, 107,  65, 110
	;   hp  atk  def  spd  spc

	db ROCK, GHOST ; type
	db 30 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/fossilaerodactyl.pic", 0, 1 ; sprite dimensions
	dw OssidactylPicFront, OssidactylPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,11,13,16
	m_tutor 17,18,20,21,22,24
	m_tutor 29,30,31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW,  CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         THUNDER_WAVE, \
	     DARK_PULSE,   STEEL_WING,   ROCK_SLIDE,   \
	     FLY,          STRENGTH,     FLASH
	; end

	db BANK(OssidactylPicFront)
	assert BANK(OssidactylPicFront) == BANK(OssidactylPicBack)
