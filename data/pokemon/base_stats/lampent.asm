	db DEX_LAMPENT ; pokedex id

	db  60,  40,  60,  55,  95
	;   hp  atk  def  spd  spc

	db GHOST, FIRE ; type
	db 90 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/lampent.pic", 0, 1 ; sprite dimensions
	dw LampentPicFront, LampentPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,11,13,14,15
	m_tutor 0
	m_tutor 29
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, \
	     \
	     PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   \
	     REST,         \
	     DARK_PULSE,   \
		 FLASH
	; end

	db BANK(LampentPicFront)
	assert BANK(LampentPicFront) == BANK(LampentPicBack)
