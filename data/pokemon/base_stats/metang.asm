	db DEX_METANG ; pokedex id

	db  60,  75, 100,  50,  55
	;   hp  atk  def  spd  spc

	db STEEL, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/metang.pic", 0, 1 ; sprite dimensions
	dw MetangPicFront, MetangPicBack

	; move tutor compatibility flags
	m_tutor 2,3,4,6,7
	m_tutor 10,12,13
	m_tutor 18,22,24
	m_tutor 31
	db GROWTH_SLOW ; growth rate

; tm/hm learnset
	tmhm DRAIN_PUNCH,  CURSE,        BRUTAL_SWING, \
	     TOXIC,        BODY_SLAM,    DOUBLE_EDGE,  \
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

	db BANK(MetangPicFront)
	assert BANK(MetangPicFront) == BANK(MetangPicBack)
