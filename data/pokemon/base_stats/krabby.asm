	db DEX_KRABBY ; pokedex id

	db  30, 105,  90,  50,  25
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 115 ; base exp

	INCBIN "gfx/pokemon/front/krabby.pic", 0, 1 ; sprite dimensions
	dw KrabbyPicFront, KrabbyPicBack

	; move tutor compatibility flags
	m_tutor 6,7
	m_tutor 10,13
	m_tutor 18
	m_tutor 25
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     \
	     PROTECT,      \
	     \
	     DIG,          \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    \
	     REST,         \
	     ROCK_SLIDE,   ICICLE_CRASH, \
	     CUT,          SURF,         STRENGTH
	; end

	db BANK(KrabbyPicFront)
	assert BANK(KrabbyPicFront) == BANK(KrabbyPicBack)
