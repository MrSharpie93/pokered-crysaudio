	db DEX_ELECTRODE ; pokedex id

	db  60,  50,  70, 150,  80
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrode.pic", 0, 1 ; sprite dimensions
	dw ElectrodePicFront, ElectrodePicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,12,13,14,15
	m_tutor 19
	m_tutor 26,27
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      \
	     FLASH_CANNON, THUNDERBOLT,  THUNDER,      \
	     SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(ElectrodePicFront)
	assert BANK(ElectrodePicFront) == BANK(ElectrodePicBack)
