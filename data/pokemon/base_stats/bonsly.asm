	db DEX_BONSLY ; pokedex id

	db  50,  80,  95,  10,  45
	;   hp  atk  def  spd  spc

	db ROCK, ROCK ; type
	db 255 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/bonsly.pic", 0, 1 ; sprite dimensions
	dw BonslyPicFront, BonslyPicBack

	; move tutor compatibility flags
	m_tutor 5,6,8
	m_tutor 10,13
	m_tutor 18,24
	m_tutor 0
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        BRUTAL_SWING, \
	     TOXIC,        DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    \
	     REST,         \
	     ROCK_SLIDE
	; end

	db BANK(BonslyPicFront)
	assert BANK(BonslyPicFront) == BANK(BonslyPicBack)
