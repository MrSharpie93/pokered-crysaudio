	db DEX_YOSHI ; pokedex id

	db 132,  90,  73,  90, 115
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 30 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/yoshi.pic", 0, 1 ; sprite dimensions
	dw YoshiPicFront, YoshiPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7
	m_tutor 9,10,11,13,14,16
	m_tutor 18,19,20,22,24
	m_tutor 25,26,29
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     SOLARBEAM,    IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     BULLET_SEED,  ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     FLY,          SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(YoshiPicFront)
	assert BANK(YoshiPicFront) == BANK(YoshiPicBack)
