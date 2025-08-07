	db DEX_CHANDELURE ; pokedex id

	db  60,  55,  90,  80, 145
	;   hp  atk  def  spd  spc

	db GHOST, FIRE ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/chandelure.pic", 0, 1 ; sprite dimensions
	dw ChandelurePicFront, ChandelurePicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,11,13,14,15
	m_tutor 0
	m_tutor 29
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  \
	     HYPER_BEAM,   \
	     PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   \
	     REST,         \
	     DARK_PULSE,   \
		 FLASH
	; end

	db BANK(ChandelurePicFront)
	assert BANK(ChandelurePicFront) == BANK(ChandelurePicBack)
