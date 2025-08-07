	db DEX_STEELIX ; pokedex id

	db  75,  85, 200,  30,  55
	;   hp  atk  def  spd  spc

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/steelix.pic", 0, 1 ; sprite dimensions
	dw SteelixPicFront, SteelixPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,12,13,16
	m_tutor 18,20,22,24
	m_tutor 31
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     FLASH_CANNON, IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     CUT,          STRENGTH
	; end

	db BANK(SteelixPicFront)
	assert BANK(SteelixPicFront) == BANK(SteelixPicBack)
