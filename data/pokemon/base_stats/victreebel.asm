	db DEX_VICTREEBEL ; pokedex id

	db  80, 105,  65,  70, 100
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/front/victreebel.pic", 0, 1 ; sprite dimensions
	dw VictreebelPicFront, VictreebelPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,15
	m_tutor 23
	m_tutor 32
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   \
	     SOLARBEAM,    \
	     \
	     DOUBLE_TEAM,  REFLECT,      POISON_JAB,   \
	     SLUDGE_BOMB,  \
	     BULLET_SEED,  REST,         \
	     \
	     CUT,          FLASH
	; end

	db BANK(VictreebelPicFront)
	assert BANK(VictreebelPicFront) == BANK(VictreebelPicBack)
