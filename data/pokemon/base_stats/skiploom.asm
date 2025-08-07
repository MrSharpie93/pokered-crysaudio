	db DEX_SKIPLOOM ; pokedex id

	db  55,  45,  50,  80,  65
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/skiploom.pic", 0, 1 ; sprite dimensions
	dw SkiploomPicFront, SkiploomPicBack

	; move tutor compatibility flags
	m_tutor 0
	m_tutor 10,13,15
	m_tutor 0
	m_tutor 30,32
	db GROWTH_MEDIUM_SLOW ; growth rate

; tm/hm learnset
	tmhm SWORDS_DANCE, CURSE,        \
	     TOXIC,        OMINOUS_WIND, DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      GIGA_DRAIN,   SAFEGUARD,    \
	     SOLARBEAM,    \
	     \
	     DOUBLE_TEAM,  REFLECT,      \
	     AERIAL_ACE,   \
	     BULLET_SEED,  REST,         \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(SkiploomPicFront)
	assert BANK(SkiploomPicFront) == BANK(SkiploomPicBack)
