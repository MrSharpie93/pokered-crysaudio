	db DEX_TANGROWTH ; pokedex id

	db 100, 100, 125,  50, 110
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 30 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tangrowth.pic", 0, 1 ; sprite dimensions
	dw TangrowthPicFront, TangrowthPicBack

	; move tutor compatibility flags
	m_tutor 6
	m_tutor 10,13,14,15
	m_tutor 18,23,24
	m_tutor 32
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  GIGA_DRAIN,   \
	     SOLARBEAM,    \
	     EARTHQUAKE,   FISSURE,      \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     SLUDGE_BOMB,  ROCK_TOMB,    AERIAL_ACE,   \
	     BULLET_SEED,  REST,         \
	     ROCK_SLIDE,   \
	     CUT,          STRENGTH,     FLASH
	; end

	db BANK(TangrowthPicFront)
	assert BANK(TangrowthPicFront) == BANK(TangrowthPicBack)
