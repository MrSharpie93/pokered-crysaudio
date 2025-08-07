	db DEX_HOUNDOOM ; pokedex id

	db  75,  90,  50,  95, 110
	;   hp  atk  def  spd  spc

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/houndoom.pic", 0, 1 ; sprite dimensions
	dw HoundoomPicFront, HoundoomPicBack

	; move tutor compatibility flags
	m_tutor 6,8
	m_tutor 10,11,13
	m_tutor 0
	m_tutor 26,29,31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     SOLARBEAM,    IRON_TAIL,    \
	     DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     SLUDGE_BOMB,  WILL_O_WISP,  FIRE_BLAST,   \
	     REST,         \
	     DARK_PULSE,   \
	     STRENGTH
	; end

	db BANK(HoundoomPicFront)
	assert BANK(HoundoomPicFront) == BANK(HoundoomPicBack)
