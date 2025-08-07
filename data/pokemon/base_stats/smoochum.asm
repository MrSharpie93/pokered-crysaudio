	db DEX_SMOOCHUM ; pokedex id

	db  45,  30,  15,  65,  85
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/smoochum.pic", 0, 1 ; sprite dimensions
	dw SmoochumPicFront, SmoochumPicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 9,10,11,13,15
	m_tutor 0
	m_tutor 25,27,28
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     LIGHT_SCREEN, PROTECT,      SAFEGUARD,    \
	     \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         \
	     DAZZLINGLEAM, ICICLE_CRASH, \
	     STRENGTH,     FLASH
	; end

	db BANK(SmoochumPicFront)
	assert BANK(SmoochumPicFront) == BANK(SmoochumPicBack)
