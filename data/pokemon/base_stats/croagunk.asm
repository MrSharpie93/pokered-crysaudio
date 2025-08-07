	db DEX_CROAGUNK ; pokedex id

	db  48,  61,  40,  50,  61
	;   hp  atk  def  spd  spc

	db POISON, FIGHTING ; type
	db 140 ; catch rate
	db 83 ; base exp

	INCBIN "gfx/pokemon/front/croagunk.pic", 0, 1 ; sprite dimensions
	dw CroagunkPicFront, CroagunkPicBack

	; move tutor compatibility flags
	m_tutor 2,3,4,5,6,7,8
	m_tutor 9,10,13
	m_tutor 18,23
	m_tutor 31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    \
	     \
	     PROTECT,      FOCUS_BLAST,  \
	     \
	     EARTHQUAKE,   FISSURE,      DIG,          SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(CroagunkPicFront)
	assert BANK(CroagunkPicFront) == BANK(CroagunkPicBack)
