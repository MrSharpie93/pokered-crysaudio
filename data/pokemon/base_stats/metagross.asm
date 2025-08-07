	db DEX_METAGROSS ; pokedex id

	db  80, 135, 130,  70,  85
	;   hp  atk  def  spd  spc

	db STEEL, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/metagross.pic", 0, 1 ; sprite dimensions
	dw MetagrossPicFront, MetagrossPicBack

	; move tutor compatibility flags
	m_tutor 2,3,4,6,7
	m_tutor 10,12,13
	m_tutor 18,20,22,24
	m_tutor 31
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   \
	     LIGHT_SCREEN, PROTECT,      \
	     FLASH_CANNON, \
	     EARTHQUAKE,   FISSURE,      DIG,          PSYCHIC_M,    SHADOW_BALL,  \
	     DOUBLE_TEAM,  REFLECT,      \
	     SLUDGE_BOMB,  ROCK_TOMB,    AERIAL_ACE,   \
	     ZEN_HEADBUTT, REST,         \
	     ROCK_SLIDE,   \
	     CUT,          STRENGTH,     FLASH,        
	; end

	db BANK(MetagrossPicFront)
	assert BANK(MetagrossPicFront) == BANK(MetagrossPicBack)
