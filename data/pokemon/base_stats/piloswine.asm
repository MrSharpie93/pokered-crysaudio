	db DEX_PILOSWINE ; pokedex id

	db 100, 100,  80,  50,  60
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 75 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/piloswine.pic", 0, 1 ; sprite dimensions
	dw PiloswinePicFront, PiloswinePicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,13
	m_tutor 18,20,22,24
	m_tutor 31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     STRENGTH
	; end

	db BANK(PiloswinePicFront)
	assert BANK(PiloswinePicFront) == BANK(PiloswinePicBack)
