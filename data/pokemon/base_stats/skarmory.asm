	db DEX_SKARMORY ; pokedex id

	db  65,  80, 140,  70,  40
	;   hp  atk  def  spd  spc

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp

	INCBIN "gfx/pokemon/front/skarmory.pic", 0, 1 ; sprite dimensions
	dw SkarmoryPicFront, SkarmoryPicBack

	; move tutor compatibility flags
	m_tutor 6,7,8
	m_tutor 10,13
	m_tutor 21,22
	m_tutor 26,30
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        OMINOUS_WIND, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     \
	     PROTECT,      \
	     FLASH_CANNON, IRON_TAIL,    \
	     \
	     X_SCISSOR,    DOUBLE_TEAM,  REFLECT,      \
	     ROCK_TOMB,    AERIAL_ACE,   \
	     HURRICANE,    REST,         \
	     DARK_PULSE,   STEEL_WING,   ROCK_SLIDE,   \
	     CUT,          FLY,          FLASH
	; end

	db BANK(SkarmoryPicFront)
	assert BANK(SkarmoryPicFront) == BANK(SkarmoryPicBack)
