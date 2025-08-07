	db DEX_DUSKULL ; pokedex id

	db  20,  40,  90,  25,  90
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 190 ; catch rate
	db 97 ; base exp

	INCBIN "gfx/pokemon/front/duskull.pic", 0, 1 ; sprite dimensions
	dw DuskullPicFront, DuskullPicBack

	; move tutor compatibility flags
	m_tutor 7
	m_tutor 10,11,13
	m_tutor 17
	m_tutor 31
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  \
	     WILL_O_WISP,  \
	     REST,         \
	     DARK_PULSE,   \
		 FLASH
	; end

	db BANK(DuskullPicFront)
	assert BANK(DuskullPicFront) == BANK(DuskullPicBack)
