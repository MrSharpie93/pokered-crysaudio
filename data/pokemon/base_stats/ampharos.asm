	db DEX_AMPHAROS ; pokedex id

	db  90,  75,  85,  55, 115
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/ampharos.pic", 0, 1 ; sprite dimensions
	dw AmpharosPicFront, AmpharosPicBack

	; move tutor compatibility flags
	m_tutor 1,3,4,5,8
	m_tutor 9,10,13,14,16
	m_tutor 18,19,22
	m_tutor 26,27
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     FLASH_CANNON, IRON_TAIL,    THUNDERBOLT,  THUNDER,      \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     STRENGTH,     FLASH
	; end

	db BANK(AmpharosPicFront)
	assert BANK(AmpharosPicFront) == BANK(AmpharosPicBack)
