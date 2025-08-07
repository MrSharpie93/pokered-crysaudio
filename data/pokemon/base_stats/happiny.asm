	db DEX_HAPPINY ; pokedex id

	db 100,   5,   5,  30,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 130 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/happiny.pic", 0, 1 ; sprite dimensions
	dw HappinyPicFront, HappinyPicBack

	; move tutor compatibility flags
	m_tutor 6,7,8
	m_tutor 10,11,13,14,15
	m_tutor 0
	m_tutor 25,28,32
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm CURSE,        \
	     TOXIC,        DOUBLE_EDGE,  \
	     BUBBLEBEAM,   \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     SOLARBEAM,    \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      FLAMETHROWER, \
	     FIRE_BLAST,   \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     DAZZLINGLEAM, \
	     FLASH
	; end

	db BANK(HappinyPicFront)
	assert BANK(HappinyPicFront) == BANK(HappinyPicBack)
