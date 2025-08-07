	db DEX_REGIGIGAS ; pokedex id

	db 110, 160, 110,  40, 110
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/regigigas.pic", 0, 1 ; sprite dimensions
	dw RegigigasPicFront, RegigigasPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,7,8
	m_tutor 9,10,12,13,14
	m_tutor 18,20,22,24
	m_tutor 0
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     FLASH_CANNON, THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     STRENGTH
	; end

	db BANK(RegigigasPicFront)
	assert BANK(RegigigasPicFront) == BANK(RegigigasPicBack)
