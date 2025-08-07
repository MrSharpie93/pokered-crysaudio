	db DEX_GOLEM ; pokedex id

	db  80, 120, 130,  45,  55
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp

	INCBIN "gfx/pokemon/front/golem.pic", 0, 1 ; sprite dimensions
	dw GolemPicFront, GolemPicBack

	; move tutor compatibility flags
	m_tutor 1,3,4,5,6,8
	m_tutor 9,10,12,13
	m_tutor 18,20,22,24
	m_tutor 28,31
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     FIRE_BLAST,   ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(GolemPicFront)
	assert BANK(GolemPicFront) == BANK(GolemPicBack)
