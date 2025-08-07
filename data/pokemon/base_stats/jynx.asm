	db DEX_JYNX ; pokedex id

	db  65,  50,  35,  95, 115
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

	; move tutor compatibility flags
	m_tutor 2,4,5,6,7,8
	m_tutor 9,10,11,13,15
	m_tutor 0
	m_tutor 25,27,28
	db GROWTH_MEDIUM_FAST ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      FOCUS_BLAST,  SAFEGUARD,    \
	     \
	     PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     \
	     ZEN_HEADBUTT, REST,         \
	     DAZZLINGLEAM, ICICLE_CRASH, \
	     STRENGTH,     FLASH
	; end

	db BANK(JynxPicFront)
	assert BANK(JynxPicFront) == BANK(JynxPicBack)
