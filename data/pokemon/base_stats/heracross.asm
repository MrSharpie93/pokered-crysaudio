	db DEX_HERACROSS ; pokedex id

	db  80, 125,  75,  85,  40
	;   hp  atk  def  spd  spc

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/heracross.pic", 0, 1 ; sprite dimensions
	dw HeracrossPicFront, HeracrossPicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,8
	m_tutor 9,10,13
	m_tutor 18,20,22
	m_tutor 31
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    AERIAL_ACE,   \
	     BULLET_SEED,  ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     CUT,          STRENGTH
	; end

	db BANK(HeracrossPicFront)
	assert BANK(HeracrossPicFront) == BANK(HeracrossPicBack)
