	db DEX_MAMOSWINE ; pokedex id

	db 110, 130,  80,  80,  70
	;   hp  atk  def  spd  spc

	db ICE, GROUND ; type
	db 50 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/mamoswine.pic", 0, 1 ; sprite dimensions
	dw MamoswinePicFront, MamoswinePicBack

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

	db BANK(MamoswinePicFront)
	assert BANK(MamoswinePicFront) == BANK(MamoswinePicBack)
