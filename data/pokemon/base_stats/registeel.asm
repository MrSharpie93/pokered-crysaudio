	db DEX_REGISTEEL ; pokedex id

	db  80,  90, 130,  50, 130
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 3 ; catch rate
	db 215 ; base exp

	INCBIN "gfx/pokemon/front/registeel.pic", 0, 1 ; sprite dimensions
	dw RegisteelPicFront, RegisteelPicBack

	; move tutor compatibility flags
	m_tutor 2,3,4,5,6,8
	m_tutor 9,10,12,13,14
	m_tutor 17,18,22,24
	m_tutor 0
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     FLASH_CANNON, THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(RegisteelPicFront)
	assert BANK(RegisteelPicFront) == BANK(RegisteelPicBack)
