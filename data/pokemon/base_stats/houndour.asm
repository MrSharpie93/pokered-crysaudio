	db DEX_HOUNDOUR ; pokedex id

	db  45,  60,  30,  65,  80
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 114 ; base exp

	INCBIN "gfx/pokemon/front/houndour.pic", 0, 1 ; sprite dimensions
	dw HoundourPicFront, HoundourPicBack

	; move tutor compatibility flags
	m_tutor 6,8
	m_tutor 10,11,13
	m_tutor 0
	m_tutor 26,29,31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     SOLARBEAM,    IRON_TAIL,    \
	     DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     SLUDGE_BOMB,  WILL_O_WISP,  FIRE_BLAST,   \
	     REST,         \
	     DARK_PULSE,   \
	     STRENGTH
	; end

	db BANK(HoundourPicFront)
	assert BANK(HoundourPicFront) == BANK(HoundourPicBack)
