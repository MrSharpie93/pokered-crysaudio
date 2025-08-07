	db DEX_SPIRITOMB ; pokedex id

	db  50, 108, 108,  35, 108
	;   hp  atk  def  spd  spc

	db GHOST, DARK ; type
	db 108; catch rate
	db 168 ; base exp

	INCBIN "gfx/pokemon/front/spiritomb.pic", 0, 1 ; sprite dimensions
	dw SpiritombPicFront, SpiritombPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,11,12,13
	m_tutor 0
	m_tutor 25,30,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     WILL_O_WISP,  ROCK_TOMB,    \
	     REST,         \
	     DARK_PULSE,   \
	     FLASH
	; end

	db BANK(SpiritombPicFront)
	assert BANK(SpiritombPicFront) == BANK(SpiritombPicBack)
