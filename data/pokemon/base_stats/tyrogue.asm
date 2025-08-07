	db DEX_TYROGUE ; pokedex id

	db  40,  40,  40,  40,  40
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/tyrogue.pic", 0, 1 ; sprite dimensions
	dw TyroguePicFront, TyroguePicBack

	; move tutor compatibility flags
	m_tutor 4,5,6,8
	m_tutor 9,10,13
	m_tutor 18,22
	m_tutor 26,28,31
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     \
	     EARTHQUAKE,   \
	     DOUBLE_TEAM,  POISON_JAB,   \
	     ROCK_TOMB,    \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(TyroguePicFront)
	assert BANK(TyroguePicFront) == BANK(TyroguePicBack)
