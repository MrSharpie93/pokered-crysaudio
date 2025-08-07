	db DEX_HITMONCHAN ; pokedex id

	db  60, 105,  99,  76,  45
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/hitmonchan.pic", 0, 1 ; sprite dimensions
	dw HitmonchanPicFront, HitmonchanPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,8
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
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  POISON_JAB,   \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(HitmonchanPicFront)
	assert BANK(HitmonchanPicFront) == BANK(HitmonchanPicBack)
