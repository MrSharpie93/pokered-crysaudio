	db DEX_REGICE ; pokedex id

	db  80,  75, 125,  50, 150
	;   hp  atk  def  spd  spc

	db ICE, ICE ; type
	db 3 ; catch rate
	db 216 ; base exp

	INCBIN "gfx/pokemon/front/regice.pic", 0, 1 ; sprite dimensions
	dw RegicePicFront, RegicePicBack

	; move tutor compatibility flags
	m_tutor 2,3,4,5,6,7,8
	m_tutor 9,10,12,13,14
	m_tutor 18,22,24
	m_tutor 27
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     FLASH_CANNON, THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     STRENGTH
	; end

	db BANK(RegicePicFront)
	assert BANK(RegicePicFront) == BANK(RegicePicBack)
