	db DEX_GRIMER ; pokedex id

	db  80,  80,  50,  25,  50
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 90 ; base exp

	INCBIN "gfx/pokemon/front/grimer.pic", 0, 1 ; sprite dimensions
	dw GrimerPicFront, GrimerPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,6
	m_tutor 10,12,13
	m_tutor 23
	m_tutor 31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    \
	     \
	     PROTECT,      GIGA_DRAIN,   \
	     THUNDERBOLT,  THUNDER,      \
	     DIG,          SHADOW_BALL,  \
	     DOUBLE_TEAM,  POISON_JAB,   FLAMETHROWER, \
	     SLUDGE_BOMB,  FIRE_BLAST,   ROCK_TOMB,    \
	     REST,         \
	     DARK_PULSE,   ROCK_SLIDE,   \
	     STRENGTH
	; end

	db BANK(GrimerPicFront)
	assert BANK(GrimerPicFront) == BANK(GrimerPicBack)
