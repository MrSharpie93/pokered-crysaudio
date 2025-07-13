	db DEX_DRAGONITE ; pokedex id

	db  91, 134,  95,  80, 100
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1 ; sprite dimensions
	dw DragonitePicFront, DragonitePicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7
	m_tutor 9,10,13,14,16
	m_tutor 18,19,20,22,24
	m_tutor 25,26,29,30
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         THUNDER_WAVE, \
	     STEEL_WING,   ROCK_SLIDE,   \
	     CUT,          FLY,          SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(DragonitePicFront)
	assert BANK(DragonitePicFront) == BANK(DragonitePicBack)
