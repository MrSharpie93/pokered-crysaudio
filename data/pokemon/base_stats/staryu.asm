	db DEX_STARYU ; pokedex id

	db  30,  45,  55,  85,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1 ; sprite dimensions
	dw StaryuPicFront, StaryuPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,11,13
	m_tutor 0
	m_tutor 25,26,27
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     FLASH_CANNON, THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, ICICLE_CRASH, \
	     SURF,         FLASH,        WATERFALL
	; end

	db BANK(StaryuPicFront)
	assert BANK(StaryuPicFront) == BANK(StaryuPicBack)
