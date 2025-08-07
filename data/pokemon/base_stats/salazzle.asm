	db DEX_SALAZZLE ; pokedex id

	db  68,  64,  60, 117, 111
	;   hp  atk  def  spd  spc

	db POISON, FIRE ; type
	db 45 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/salandit.pic", 0, 1 ; sprite dimensions
	dw SalazzlePicFront, SalazzlePicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,16
	m_tutor 17,23
	m_tutor 29,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAGON_CLAW,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      \
	     IRON_TAIL,    \
	     \
	     DOUBLE_TEAM,  POISON_JAB,   FLAMETHROWER, \
	     SLUDGE_BOMB,  WILL_O_WISP,  FIRE_BLAST,   \
	     REST,         \
	     DARK_PULSE,   \
	     CUT,          STRENGTH
	; end

	db BANK(SalazzlePicFront)
	assert BANK(SalazzlePicFront) == BANK(SalazzlePicBack)
