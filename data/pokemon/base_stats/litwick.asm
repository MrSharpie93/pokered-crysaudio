	db DEX_LITWICK ; pokedex id

	db  50,  30,  55,  20,  65
	;   hp  atk  def  spd  spc

	db GHOST, FIRE ; type
	db 190 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/litwick.pic", 0, 1 ; sprite dimensions
	dw LitwickPicFront, LitwickPicBack

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

	db BANK(LitwickPicFront)
	assert BANK(LitwickPicFront) == BANK(LitwickPicBack)
