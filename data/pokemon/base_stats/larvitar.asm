	db DEX_LARVITAR ; pokedex id

	db  50,  64,  50,  41,  45
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/larvitar.pic", 0, 1 ; sprite dimensions
	dw LarvitarPicFront, LarvitarPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13
	m_tutor 18,20,22,24
	m_tutor 31
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     IRON_TAIL,    \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(LarvitarPicFront)
	assert BANK(LarvitarPicFront) == BANK(LarvitarPicBack)
