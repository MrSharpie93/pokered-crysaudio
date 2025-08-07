	db DEX_HITMONLEE ; pokedex id

	db  60,  95,  95,  90,  45
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 138 ; base exp

	INCBIN "gfx/pokemon/front/hitmontop.pic", 0, 1 ; sprite dimensions
	dw HitmontopPicFront, HitmontopPicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,8
	m_tutor 9,10,13
	m_tutor 18,20,22
	m_tutor 26,28,31
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     DOUBLE_TEAM,  POISON_JAB,   \
	     ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(HitmontopPicFront)
	assert BANK(HitmontopPicFront) == BANK(HitmontopPicBack)
