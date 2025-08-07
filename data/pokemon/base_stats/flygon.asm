	db DEX_FLYGON ; pokedex id

	db  80, 100,  80, 100,  80
	;   hp  atk  def  spd  spc

	db GROUND, DRAGON ; type
	db 45; catch rate
	db 197 ; base exp

	INCBIN "gfx/pokemon/front/flygon.pic", 0, 1 ; sprite dimensions
	dw FlygonPicFront, FlygonPicBack

	; move tutor compatibility flags
	m_tutor 1,3,6
	m_tutor 10,13,16
	m_tutor 18,20,24
	m_tutor 26,27,30
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    AERIAL_ACE,   \
	     REST,         \
	     STEEL_WING,   ROCK_SLIDE,   \
	     FLY,          STRENGTH
	; end

	db BANK(FlygonPicFront)
	assert BANK(FlygonPicFront) == BANK(FlygonPicBack)
