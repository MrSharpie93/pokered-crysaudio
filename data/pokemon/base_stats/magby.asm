	db DEX_MAGBY ; pokedex id

	db  45,  75,  37,  83,  55
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/magby.pic", 0, 1 ; sprite dimensions
	dw MagbyPicFront, MagbyPicBack

	; move tutor compatibility flags
	m_tutor 1,3,4,5,6,8
	m_tutor 9,10,13
	m_tutor 24
	m_tutor 28,29,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     SOLARBEAM,    IRON_TAIL,    \
	     PSYCHIC_M,    \
	     DOUBLE_TEAM,  FLAMETHROWER, \
	     WILL_O_WISP,  FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         \
	     \
	     STRENGTH,     FLASH
	; end

	db BANK(MagbyPicFront)
	assert BANK(MagbyPicFront) == BANK(MagbyPicBack)
