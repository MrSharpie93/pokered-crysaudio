	db DEX_VENUSAUR ; pokedex id

	db 100,  82,  83,  80, 100
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp

	INCBIN "gfx/pokemon/front/venusaur.pic", 0, 1 ; sprite dimensions
	dw VenusaurPicFront, VenusaurPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,15
	m_tutor 18,23,24
	m_tutor 30,31,32
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   SAFEGUARD,    \
	     SOLARBEAM,    \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     SLUDGE_BOMB,  \
	     BULLET_SEED,  REST,         \
	     DAZZLINGLEAM, \
	     CUT,          STRENGTH,     FLASH
	; end

	db BANK(VenusaurPicFront)
	assert BANK(VenusaurPicFront) == BANK(VenusaurPicBack)
