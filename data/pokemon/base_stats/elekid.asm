	db DEX_ELEKID ; pokedex id

	db  45,  63,  37,  95,  65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/elekid.pic", 0, 1 ; sprite dimensions
	dw ElekidPicFront, ElekidPicBack

	; move tutor compatibility flags
	m_tutor 1,2,3,4,5,6,8
	m_tutor 9,10,13,14
	m_tutor 19
	m_tutor 26,27,28,31
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     \
	     LIGHT_SCREEN, PROTECT,      \
	     THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         THUNDER_WAVE, \
	     \
	     STRENGTH,     FLASH
	; end

	db BANK(ElekidPicFront)
	assert BANK(ElekidPicFront) == BANK(ElekidPicBack)
