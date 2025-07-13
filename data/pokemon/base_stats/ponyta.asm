	db DEX_PONYTA ; pokedex id

	db  50,  85,  55,  90,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 152 ; base exp

	INCBIN "gfx/pokemon/front/ponyta.pic", 0, 1 ; sprite dimensions
	dw PonytaPicFront, PonytaPicBack

	; move tutor compatibility flags
	m_tutor 5
	m_tutor 10,13
	m_tutor 19
	m_tutor 26,29
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     SOLARBEAM,    IRON_TAIL,    \
	     \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   \
	     REST,         \
	     \
	     STRENGTH,     FLASH
	; end

	db BANK(PonytaPicFront)
	assert BANK(PonytaPicFront) == BANK(PonytaPicBack)
