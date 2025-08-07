	db DEX_HOPPIP ; pokedex id

	db  35,  35,  40,  50,  55
	;   hp  atk  def  spd  spc

	db GRASS, FLYING ; type
	db 255 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/hoppip.pic", 0, 1 ; sprite dimensions
	dw HoppipPicFront, HoppipPicBack

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

	db BANK(HoppipPicFront)
	assert BANK(HoppipPicFront) == BANK(HoppipPicBack)
