	db DEX_MAGNEZONE ; pokedex id

	db  70,  70, 115,  60, 130
	;   hp  atk  def  spd  spc

	db ELECTRIC, STEEL ; type
	db 30 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/magnezone.pic", 0, 1 ; sprite dimensions
	dw MagnezonePicFront, MagnezonePicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,12,13,14
	m_tutor 19,22
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      \
	     FLASH_CANNON, THUNDERBOLT,  THUNDER,      \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     REST,         THUNDER_WAVE, \
	     \
	     FLASH
	; end

	db BANK(MagnezonePicFront)
	assert BANK(MagnezonePicFront) == BANK(MagnezonePicBack)
