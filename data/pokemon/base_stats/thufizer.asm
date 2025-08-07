	db DEX_THUFIZER ; pokedex id

	db  90,  95,  95,  95, 125
	;   hp  atk  def  spd  spc

	db BIRD, FLYING ; type
	db 3 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/thufizer.pic", 0, 1 ; sprite dimensions
	dw ThuFiZerPicFront, ThuFiZerPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,13,14
	m_tutor 19,21
	m_tutor 25,26,27,29,30
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     FLASH_CANNON, SOLARBEAM,    THUNDERBOLT,  THUNDER,      \
	     \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   AERIAL_ACE,   \
	     HURRICANE,    REST,         THUNDER_WAVE, \
	     STEEL_WING,   ICICLE_CRASH, \
	     FLY,          FLASH
	; end

	db BANK(ThuFiZerPicFront)
	assert BANK(ThuFiZerPicFront) == BANK(ThuFiZerPicBack)
