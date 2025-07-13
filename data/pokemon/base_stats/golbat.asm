	db DEX_GOLBAT ; pokedex id

	db  75,  80,  70,  90,  75
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13
	m_tutor 21,23
	m_tutor 26,30,31
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        OMINOUS_WIND, GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     PROTECT,      GIGA_DRAIN,   \
	     \
	     SHADOW_BALL,  \
	     X_SCISSOR,    DOUBLE_TEAM,  POISON_JAB,   \
	     SLUDGE_BOMB,  AERIAL_ACE,   \
	     ZEN_HEADBUTT, HURRICANE,    REST,         \
	     DARK_PULSE,   STEEL_WING,   \
	     FLY
	; end

	db BANK(GolbatPicFront)
	assert BANK(GolbatPicFront) == BANK(GolbatPicBack)
