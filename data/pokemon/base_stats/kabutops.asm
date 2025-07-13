	db DEX_KABUTOPS ; pokedex id

	db  60, 115, 105,  80,  70
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 201 ; base exp

	INCBIN "gfx/pokemon/front/kabutops.pic", 0, 1 ; sprite dimensions
	dw KabutopsPicFront, KabutopsPicBack

	; move tutor compatibility flags
	m_tutor 5,6,7
	m_tutor 9,10,13
	m_tutor 20,24
	m_tutor 25,30
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   SCALD,        ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     \
	     DIG,          \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    AERIAL_ACE,   \
	     REST,         \
	     ROCK_SLIDE,   \
	     CUT,          SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(KabutopsPicFront)
	assert BANK(KabutopsPicFront) == BANK(KabutopsPicBack)
